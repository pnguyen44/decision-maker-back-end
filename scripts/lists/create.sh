#!/bin/bash

TOKEN='BAhJIiVkY2VlOTlkOWVmMDExODVjMDNkOTQ0NGNlNjRmNDE2YwY6BkVG--fffb6743391d54829c664e48eb73162cbcfa5d42'
NAME='curl 4'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
