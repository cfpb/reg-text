#!/usr/bin/env bash

sed -E\
    -e '/^ *$/d' `# Whitespace-only or empty lines` \
    -e 's/ / /g' `# nbsp to space` \
    -e 's/[—–]/-/g' `# em- and en-dash to hyphen` \
    -e "s/’/'/g" `# apostrophe to single quote` \
    -e 's/[[:blank:]]*-[[:blank:]]*/-/g' `# collapse whitespace around hyphen` \
    -e 's/§[[:blank:]]*/§/g' `# Remove space after section marker` \
    -e 's/⁄/\//g' `# Fraction slash to forward slash` \
    -e 's/Comment for/Section/' `# Supplement titling divergence` \
    -e 's/_+//g' `# Collapse and trim underscores` \
