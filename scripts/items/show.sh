#!/bin/bash

TOKEN='BAhJIiUxNDA4NDY2YmQyYTU5ZmUyZThmOGM0ZGFmMThlY2Q3OQY6BkVG--db51d1484b3039dedbcd9b7187ef6fbc0e3b660f'
ID=2

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
