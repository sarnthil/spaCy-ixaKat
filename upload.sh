#! /bin/sh
rm -fr build dist unidic2ud.egg-info
python3 setup.py bdist_wheel
for F in dist/*.whl
do mv -i $F `echo $F | sed 's/-any\.whl$/-manylinux1_x86_64.whl'`
done
git status
twine upload --repository pypi dist/*
exit 0
