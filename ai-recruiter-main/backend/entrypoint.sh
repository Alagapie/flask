#!/bin/sh

echo "Start run entrypoint script..."

echo "Environment: $APP_ENV"
echo "API_ENTRYPOINT: $API_ENTRYPOINT"
echo "API_HOST: $API_HOST"
echo "API_PORT: $API_PORT"

if [ "$APP_ENV" = "local" ]; then
    echo "Run app with gunicorn server..."
    gunicorn --bind 0.0.0.0:5000 $API_ENTRYPOINT --timeout 1200 --workers 4
else
    echo "Environment is not set to local. Exiting."
    exit 1
fi
