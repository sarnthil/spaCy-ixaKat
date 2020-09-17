#! /bin/sh
rm -fr build dist *.egg-info
cp packages.sh packages.sh.bak
sed 's/^.*dep-eu-resources/# &/' packages.sh.bak > packages.sh
python3 setup.py sdist
mv packages.sh.bak packages.sh
git status
twine upload --repository pypi dist/*
exit 0
