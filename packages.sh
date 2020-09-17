#! /bin/sh
cd spacy_ixakat || exit 1
find ./bin ./ixa-pipe-dep-eu -type f -print
find ./dep-eu-resources-* -type f -print
find -H ./ixa-pipe-pos-eu/bin ./ixa-pipe-pos-eu/etc ./ixa-pipe-pos-eu/lib ./ixa-pipe-pos-eu/var ./ixa-pipe-pos-eu/*.sh -xtype f -print
find ./ixa-pipes-1.1.1/ud*/eu ./ixa-pipes-1.1.1/ixa-pipe-pos-*.jar -type f -print
exit 0
