#!/bin/bash
REQ=$1
if [[ "x$REQ" == "x" ]]; then REQ=/tmp/requirements.txt ; fi

cat $REQ
xargs -n1 johnnydep --verbose 0 < $REQ