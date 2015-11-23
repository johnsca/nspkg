#!/bin/bash

for python in 'python2' 'python3'; do
    virtualenv -p $python .venv
    (cd 1 ; ../.venv/bin/pip install .)
    (cd 2 ; ../.venv/bin/pip install -e .)
    echo
    echo "-----------------------------------------------------------------"
    echo "Testing $python..."
    .venv/bin/python test.py
    echo "-----------------------------------------------------------------"
    echo
    rm -rf .venv
done
