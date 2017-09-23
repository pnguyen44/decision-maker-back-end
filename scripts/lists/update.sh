#!/bin/bash
TOKEN='BAhJIiVmYmE4MjE0NjRkNDI1OWMxYzJhZDZmZjlhNmQ5NzM0NgY6BkVG--37b596edf7e26ffea051fbe574bccef79afe0432'
NAME='Heathy things to eat---'
ID=2
curl --include --request PATCH "http://localhost:4741/lists/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
  "list": {
    "name": "'"${NAME}"'"
  }
}'

echo
