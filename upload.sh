#! /bin/sh
rm -fr build dist unidic2ud.egg-info
python3 setup.py sdist
# for F in dist/*
# do mv -i $F `echo $F | sed 's/-any\./-manylinux1_x86_64./'`
# done
git status
twine upload --repository pypi dist/*
exit 0
