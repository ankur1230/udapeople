#!/bin/bash
SUCCESS="$(curl --insecure https://kvdb.io/26CFVW9rVsg3weDY3qP1q9/migration_"${CIRCLE_WORKFLOW_ID:0:7}")"
if(( SUCCESS==1 )); 
then
    npm install
    npm run migrations:revert
fi