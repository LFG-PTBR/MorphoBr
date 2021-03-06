#!/bin/bash

# meant to be run from ROOT directory of the morphoBR repository

function cat-dict {
    OUTPUT=$(echo $1 | sed 's/\//-/g')
    cat $1/*.dict > $OUTPUT.dict
}

# adjectives
sort -u adjectives/*.dict diminutives/deadjectivals.mbr.dict > adjectives.dict
# adverbs
cat-dict adverbs
# nouns
sort -u nouns/*.dict diminutives/denominals.mbr.dict > nouns.dict
# verbs
cat-dict verbs
# verb clitics
cat-dict verbs/clitics
