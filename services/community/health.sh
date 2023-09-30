#!/bin/sh
SCHEME="http"
if [ "$TLS_ENABLED" = "true" ] || [ "$TLS_ENABLED" = "1" ]; then
  SCHEME="https"
fi
curl -k $SCHEME://127.0.0.1:${SERVER_PORT:-8000}/community/home
