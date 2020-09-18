
API="http://localhost:4741"
URL_PATH="/tracker"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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

echo
