#!/bin/bash

# Start flask
/app/.venv/bin/python /app/app.py &

# Start nginx
nginx -g "daemon off;" &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
