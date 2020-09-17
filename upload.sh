#! /bin/sh
rm -fr build dist *.egg-info
python3 setup.py sdist
# for F in dist/*
# do mv -i $F `echo $F | sed 's/-any\./-manylinux1_x86_64./'`
# done
git status
twine upload --repository pypi dist/*
exit 0
