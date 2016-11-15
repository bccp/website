git remote add publish git@github.com:bccp/website.git
git fetch publish gh-pages
mkdir -p gh-pages-dir
git --work-tree=$PWD/gh-pages-dir checkout publish/gh-pages -- .

if ! [ $TRAVIS_PULL_REQUEST == false ]; then
    TARGET=$PWD/gh-pages-dir/pr/$TRAVIS_PULL_REQUEST
else
    TARGET=$PWD/gh-pages-dir/br/$TRAVIS_BRANCH
fi
mkdir -p $TARGET
rm -rf $TARGET
mkdir -p $TARGET
cp -r output/* $TARGET

echo $TARGET
ghp-import -p -m 'Nikola auto deploy [ci skip]'.$TRAVIS_BUILD_ID gh-pages-dir
