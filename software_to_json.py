"""
    This simple script converts the current software.rst page to a json file.
"""
import json
import urllib2
import os
TOKEN = os.environ["GITHUB_OAUTH2_TOKEN"]

def buildjson():
    with file('pages/software.rst', 'r') as ff:
        lines = ff.readlines()

    def parse(lines):
        STARTED = 1
        state = 0
        for line in lines:
            line = line.strip()
            if len(line) == 0:
                continue
            if state < STARTED:
                if line == '====':
                    state = STARTED
                    entry = {}
                    L = []
                continue
            else:
                if line.startswith('---'):
                    entry['ProjectName'] = L[-1][1:-2]
                    L = []
                    continue
                elif line.startswith('.. _'):
                    if 'Links' not in entry:
                        entry['Links'] = []
                    entry['Links'].append(line[line.index(':')+1:].strip())
                    continue 
                elif line == 'Links:':
                    continue
                elif line.startswith('- http'):
                    if 'Links' not in entry:
                        entry['Links'] = []
                    entry['Links'].append(line[2:].strip())
                    continue 
                elif line == '====':
                    entry['Description'] = ' '.join(L)
                    yield entry
                    entry = {}
                    L = []
                else:
                    L.append(line)
        entry['Description'] = ' '.join(L)
        yield entry

    entries = [entry for entry in parse(lines) ]
    with file('software.json', 'w') as ff:
        json.dump(entries, ff, sort_keys=True,
                      indent=4, separators=(',', ': '))

def fixjson():
    with file('software.json', 'r') as ff:
        entries = json.load(ff)
    class NotGithubURL(Exception): pass
    def parse_github_url(url):
        """ returns the :owner and :repo field """
        if 'github.com' in url:
            url = url.strip('/')
            slashes = url.split('/')
            if slashes[-2].endswith('github.com'):
                # this is a org
                return slashes[-1],
            else:
                return slashes[-2], slashes[-1]
        else:
            raise NotGithubURL("Not a Github URL");
    for entry in entries:
        if len(entry['Description'].strip()) == 0:
            for url in entry['Links']:
                try:
                    result = parse_github_url(url)
                    if len(result) == 2:
                        req = urllib2.Request("https://api.github.com/repos/%s/%s" % result)
                    elif len(result) == 1:
                        req = urllib2.Request("https://api.github.com/orgs/%s" % result)
                    else:
                        raise RuntimeError

                    req.add_header('Authorization', 'token %s' % TOKEN)
                    ff = urllib2.urlopen(req)
                    data = json.load(ff)
                    if data['description']:
                        entry['Description'] = data['description']
                    else:
                        pass
                except NotGithubURL:
                    continue
    with file('software.json', 'w') as ff:
        json.dump(entries, ff, sort_keys=True,
                      indent=4, separators=(',', ': '))

def buildrst():
    header="""
.. link: 
.. description: 
.. tags: 
.. date: 2014/02/08 12:19:51
.. title: Software
.. slug: software

BCCP develops open-source software for use in cosmology. Here are some
of our projects:

"""
    with file('software.json', 'r') as ff:
        entries = json.load(ff)
    with file('software.rst', 'w') as ff:
        ff.write(header)
        for entry in entries:
            ff.write('====\n\n')
            ff.write('`%s`_\n' % entry['ProjectName'])
            ff.write('-' * (len(entry['ProjectName']) + 3))
            ff.write('\n\n')
            ff.write('%s\n\n' % entry['Description'])
            if len(entry['Links']) > 0:
                ff.write('Links:\n\n')
                for link in entry['Links']:
                    ff.write('- %s\n' % link)
            ff.write('\n')

# these really should be subcommands!
buildjson()
fixjson()
buildrst()
