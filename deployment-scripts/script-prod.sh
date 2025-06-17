#!/usr/bin/env bash
set -euo pipefail

echo "Triggering ECS deployment (prod)..."
aws ecs update-service \
  --cluster "$CLUSTER_NAME_PROD" \
  --service "$SERVICE_NAME_PROD" \
  --force-new-deployment