#!/bin/sh
set -e

echo "==> Pushing Prisma schema to database..."
bun run db:push

if [ "$DB_SEED" = "true" ]; then
  echo "==> Seeding database..."
  bun run db:seed || echo "Warning: Seeding failed or already seeded, continuing..."
fi

echo "==> Starting application..."
exec "$@"
