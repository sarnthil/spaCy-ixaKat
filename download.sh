#! /bin/sh
cd spacy_ixakat || exit 1
if [ -d ixa-pipe-dep-eu ]
then :
else curl -L http://ixa2.si.ehu.es/ixakat/downloads/ixa-pipe-dep-eu-v2.0.0.tgz | tar xzf -
fi
if [ -d dep-eu-resources-v2.0.0 ]
then :
else curl -L http://ixa2.si.ehu.es/ixakat/downloads/dep-eu-resources-v2.0.0.tgz | tar xzf -
fi
if [ -d ixa-pipe-pos-eu ]
then :
else curl -L http://ixa2.si.ehu.es/eustagger/download/ixa-pipe-pos-eu-x86-64.tar.bz2 | tar xjf -
fi
if [ -d ixa-pipes-1.1.1 ]
then :
else curl -L http://ixa2.si.ehu.es/ixa-pipes/models/ixa-pipes-1.1.1.tar.gz | tar xzf -
fi
exit 0
