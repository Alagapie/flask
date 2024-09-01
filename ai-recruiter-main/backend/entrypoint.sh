#!/bin/sh

echo "Start run entrypoint script..."

echo "Environment: $APP_ENV"

if [ "$APP_ENV" = "local" ]; then
    echo "Run app with gunicorn server..."
    gunicorn --bind 0.0.0.0:5000 $API_ENTRYPOINT --timeout 1200 --workers 4
fi
