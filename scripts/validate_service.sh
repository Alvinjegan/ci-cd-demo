#!/bin/bash
set -e

echo ">>> Validating Nginx service..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ "$STATUS" -eq 200 ]; then
  echo ">>> Validation successful: HTTP 200 OK"
  exit 0
else
  echo ">>> Validation failed: HTTP $STATUS"
  exit 1
fi
