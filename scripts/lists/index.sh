#!/bin/bash

TOKEN='BAhJIiVmYmE4MjE0NjRkNDI1OWMxYzJhZDZmZjlhNmQ5NzM0NgY6BkVG--37b596edf7e26ffea051fbe574bccef79afe0432'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \

echo
