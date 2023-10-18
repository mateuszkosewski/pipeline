#!/bin/bash

UNCOMMITED_CHANGES=$(git --no-pager diff --name-only public/build/)
UNCOMMITED_CHANGES_LENGTH=${#UNCOMMITED_CHANGES}

if (( ${UNCOMMITED_CHANGES_LENGTH} > 0 )); then
   echo "Assets invalid!"
   exit 1
else
   echo "Assets correct!"
fi