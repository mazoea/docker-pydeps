#!/bin/bash
REQ=$1
if [[ "x$REQ" == "x" ]]; then REQ=/tmp/requirements.txt ; fi

echo "====="
echo "$REQ:"
cat $REQ
echo
echo "====="

xargs -n1 johnnydep --verbose 0 < $REQ