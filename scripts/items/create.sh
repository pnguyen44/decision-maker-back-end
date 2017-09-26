#!/bin/bash

TOKEN='"BAhJIiU5MTdiYzhkMWZlYzcyZTc5ZDMwZGU0NmVkZTRmZDJmYwY6BkVG--38af6578a14c67d45072d73c21ad1b3e8de542a0'
NAME='new cur'
LIST_ID=2
MARK='false'


# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://the-decision-maker.herokuapp.com}"

URL_PATH="/items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "list_id": "'"${LIST_ID}"'",
      "name": "'"${NAME}"'",
      "mark": "'"${MARK}"'"
    }
  }'

echo
