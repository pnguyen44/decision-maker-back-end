#!/bin/bash
TOKEN='BAhJIiUxNDA4NDY2YmQyYTU5ZmUyZThmOGM0ZGFmMThlY2Q3OQY6BkVG--db51d1484b3039dedbcd9b7187ef6fbc0e3b660f'
NAME='Heathy things to eat---new up'
ID=3
MARK='false'
LIST_ID=2
curl --include --request PATCH "http://localhost:4741/items/${ID}" \
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
