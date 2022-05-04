#!/usr/bin/env bash

DIRECTORIES = [
    'lexical'
    'lexical-react'
    'lexical-yjs'
    'lexical-list'
    'lexical-table'
    'lexical-file'
    'lexical-clipboard'
    'lexical-hashtag'
    'lexical-history'
    'lexical-selection'
    'lexical-offset'
    'lexical-code'
    'lexical-plain-text'
    'lexical-rich-text'
    'lexical-utils'
    'lexical-dragon'
    'lexical-overflow'
    'lexical-link'
    'lexical-text'
    'lexical-markdown'
]


for directory in DIRECTORIES;
    for i in $(find ./packages/$directory -iname "*.js" -not -path "*__tests__*");
        do git mv "$i" "$(echo $i | rev | cut -d '.' -f 2- | rev).ts";
    done
    for i in $(find ./packages$directory -iname "*.jsx" -not -path "*__tests__*");
        do git mv "$i" "$(echo $i | rev | cut -d '.' -f 2- | rev).tsx";
    done
done