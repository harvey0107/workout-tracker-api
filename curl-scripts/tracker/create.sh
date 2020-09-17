  API="http://localhost:4741"
  URL_PATH="/tracker"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer ${TOKEN}" \
    --data '{
      "tracker": {
        "exercise": "'"${EXERCISE}"'",
        "weight": "'"${WEIGHT}"'",
        "target_muscle": "'"${TARGET}"'",
        "sets": "'"${SETS}"'"
        }
    }'
