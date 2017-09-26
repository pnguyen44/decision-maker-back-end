#!/bin/bash
TOKEN='BAhJIiVjYTdiYTVmNzlhMDhlNjg4ZWFiY2MxMmE2YTM0NjMwNQY6BkVG--b9cb9d37c4aae5aa333d571bc51f11ecc85c0e33'
NAME='testing now'
ID=4
MARK='false'
LIST_ID=1


# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://the-decision-maker.herokuapp.com}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
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
