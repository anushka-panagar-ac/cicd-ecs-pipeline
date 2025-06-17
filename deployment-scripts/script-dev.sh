#!/usr/bin/env bash
set -euo pipefail

echo "Triggering ECS deployment (dev)..."
aws ecs update-service \
  --cluster "$CLUSTER_NAME_DEV" \
  --service "$SERVICE_NAME_DEV" \
  --force-new-deployment