#!/bin/bash
echo "Launching NodeCOLMAP"

RUNPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$RUNPATH/run.py "$@"
exit 0