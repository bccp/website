#! /bin/bash

# this script will generate the site in $HOME/site
#
# it clones and builds the repository in $HOME/build
#
# it assumes git, python and nikola are installed.
#
# it can be triggered by the server via a github hook.
#
# note that in our current setup,
# this file needs to be manually updated on the server.
#
# subsites.txt in $HOME/build/website

function setup_subsite {
	local gitrepo=$1
	local localname=$2
	local sitetype=$3
	local siterelroot=$4

	local siteroot=$HOME/build/$localname/$siterelroot
	echo setting up subsite $gitrepo at $siteroot

	pushd $HOME/build

	git clone $gitrepo $localname
	cd $localname

	git fetch --all
	git checkout -B master origin/master
	git reset --hard origin/master

	if [ "x$type" == "xnikola" ]; then
		nikola build 2>&1
	fi	
	popd

	rsync -av --exclude=".*" $siteroot $HOME/site/$localname
	return $siteroot;
}

mkdir -p $HOME/build
pushd $HOME/build
git clone https://github.com/bccp/website website
cd website
git fetch --all
git checkout master
git reset --hard origin/master
nikola build 2>&1
rsync -av --exclude=".*" output/* $HOME/site/
popd

CONFDIR=$HOME/build/website
echo ===================
cat $CONFDIR/subsites.txt
echo ===================
IFS=" |"
while read url name sitetype reldir; do
echo ==================
setup_subsite "$url" "$name" "$sitetype" "$reldir"
echo ==================
done < $CONFDIR/subsites.txt

#setup_subsite https://github.com/bccp/website-2017-neutral-hydrogen 2017-neutral-hydrogen html .

