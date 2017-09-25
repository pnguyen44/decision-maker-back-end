#!/bin/bash

TOKEN='BAhJIiUyMmU1YThkNDRmNTBhZjA2ZDQ2ODQ4YTQ4Yzg5NWUzNgY6BkVG--7ae5d0a758dc84248771f6669e36e8512b9ec721'
NAME='curl 4'
LIST_ID=2
MARK='false'


API="${API_ORIGIN:-http://localhost:4741}"
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
