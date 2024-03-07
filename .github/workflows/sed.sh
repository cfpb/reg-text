#!/usr/bin/env bash

sed -e '/^ *$/d' -e 's/ / /g' -e 's/–/-/g' -e "s/’/'/g"
