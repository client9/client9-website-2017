#!/bin/sh -e

find content -name '*.md' | grep -v 2016-08-21 | xargs ./bin/misspell -error
