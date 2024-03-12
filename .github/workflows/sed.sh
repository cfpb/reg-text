#!/usr/bin/env bash

sed -E\
    -e '/^ *$/d' `# Whitespace-only or empty lines` \
    -e 's/ / /g' `# nbsp to space` \
    -e 's/–/-/g' `# endash to hyphen` \
    -e "s/’/'/g" `# apostrophe to single quote` \
    -e 's/[[:blank:]]([—-])[[:blank:]]/\1/g' `# collapse whitespace around emdash and hyphen`
