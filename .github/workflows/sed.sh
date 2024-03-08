#!/usr/bin/env bash

sed -e '/^ *$/d'     `# Whitespace-only or empty lines` \
    -e 's/ / /g'     `# nbsp to space` \
    -e 's/–/-/g'     `# endash to hyphen` \
    -e "s/’/'/g"     `# apostrophe to single quote` \
    -e 's/\s—\s/—/g' `# collapse whitespace around emdash`
