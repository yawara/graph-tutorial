#!/bin/bash
asciidoctor $1
html=$(echo $1 | sed -e 's/\(.*\)\.asciidoc/\1\.html/')
sed -e 's/\*\([^\*]*\)\*/<b>\1<\/b>/g' $html > tmp
mv tmp $html
