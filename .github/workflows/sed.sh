#!/usr/bin/env bash

sed -E\
    -e '/^ *$/d' `# Whitespace-only or empty lines` \
    -e 's/ / /g' `# nbsp to space` \
    -e 's/[—–]/-/g' `# em- and en-dash to hyphen` \
    -e "s/’/'/g" `# apostrophe to single quote` \
    -e 's/[[:blank:]]-[[:blank:]]/-/g' `# collapse whitespace around hyphen`
