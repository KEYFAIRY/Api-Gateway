#!/bin/sh
set -e

: "${PORT:?Error: PORT environment variable is not set.}"
: "${FIREBASE_JWK_URL:?Error: FIREBASE_JWK_URL is not set.}"
: "${FIREBASE_PROJECT_ID:?Error: FIREBASE_PROJECT_ID is not set.}"
: "${FIREBASE_ISSUER:?Error: FIREBASE_ISSUER is not set.}"

# Sustituye variables del template ($PORT, $FIREBASE_*)
envsubst < /etc/krakend/krakend.tmpl.json > /etc/krakend/krakend.json
echo "[INFO] Generated /etc/krakend/krakend.json (PORT=$PORT)"

# Arranca KrakenD
exec krakend run -c /etc/krakend/krakend.json -p "$PORT"