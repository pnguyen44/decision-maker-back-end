#!/bin/bash

TOKEN='BAhJIiVmYmE4MjE0NjRkNDI1OWMxYzJhZDZmZjlhNmQ5NzM0NgY6BkVG--37b596edf7e26ffea051fbe574bccef79afe0432'
ID=4

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
