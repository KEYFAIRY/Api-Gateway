#!/bin/sh
set -e

: "${PORT:?Error: PORT environment variable is not set.}"
: "${FIREBASE_JWK_URL:?Error: FIREBASE_JWK_URL is not set.}"
: "${FIREBASE_PROJECT_ID:?Error: FIREBASE_PROJECT_ID is not set.}"
: "${FIREBASE_ISSUER:?Error: FIREBASE_ISSUER is not set.}"

# Generar la config final desde el template
envsubst < /etc/krakend/krakend.tmpl.json > /etc/krakend/krakend.json
echo "[INFO] Generated /etc/krakend/krakend.json (PORT=$PORT)"

# Arrancar KrakenD usando el puerto indicado
exec krakend run -c /etc/krakend/krakend.json -p "$PORT"