#! /bin/bash

# note that this file needs to be manually updated on the server.

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

	cp -r $siteroot $HOME/site/$localname
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
rm -rf $HOME/site/*
cp -r output/* $HOME/site/
popd

CONFDIR=`readlink -f $0`
CONFDIR=`dirname $CONFDIR`
cat $CONFDIR/subsites.txt
IFS=" |"
while read url name sitetype reldir; do
setup_subsite "$url" "$name" "$sitetype" "$reldir"
done < $CONFDIR/subsites.txt

#setup_subsite https://github.com/bccp/website-2017-neutral-hydrogen 2017-neutral-hydrogen html .

