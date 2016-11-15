git remote add publish git@github.com:bccp/website.git
git fetch publish gh-pages
mkdir -p gh-pages-dir
git --work-tree=$PWD/gh-pages-dir checkout publish/gh-pages -- .

if ! [ $TRAVIS_PULL_REQUEST == false ]; then
    PREFIX=pr/$TRAVIS_PULL_REQUEST
else
    PREFIX=br/$TRAVIS_BRANCH
fi
TARGET=$PWD/gh-pages-dir/$PREFIX
mkdir -p $TARGET
rm -rf $TARGET
mkdir -p $TARGET
cp -r output/* $TARGET

echo $TARGET
ghp-import -r publish -p -m 'Nikola auto deploy [ci skip]'.$TRAVIS_BUILD_ID gh-pages-dir
echo Preview at http://bccp.github.io/website/$PREFIX

