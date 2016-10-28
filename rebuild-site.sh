#! /bin/bash

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


	git reset --hard
	git pull -f

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

git reset --hard
git pull -f
nikola build 2>&1
rm -rf $HOME/site/*
cp -r output/* $HOME/site/
popd

setup_subsite https://github.com/bccp/website-2017-neutral-hydrogen 2017-neutral-hydrogen html .

