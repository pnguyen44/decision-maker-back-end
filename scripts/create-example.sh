#!/bin/bash

TOKEN='BAhJIiUwYzhmNjRlNGZjODM5ZDAxYjNiNDYwZjFjYjdmN2VjZgY6BkVG--5b4f09d47214d2bde8b4c1dd92c2c6ec6b508b6b'
TEXT='this thing222'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
