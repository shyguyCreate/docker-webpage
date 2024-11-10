# syntax=docker/dockerfile:1

FROM python:3.13-slim-bookworm AS flask

# Copy python app to root directory
COPY /app /app

# Create and activate virtual environment
RUN python3 -m venv /app/.venv; \
    . /app/.venv/bin/activate; \
    # Install pip requirements
    pip install -r /app/requirements.txt

FROM nginx:1.27-bookworm AS nginx

EXPOSE 80

# Copy python binaries and python app
COPY --from=flask /usr/local /usr/local
COPY --from=flask /app /app

# Set nginx config
COPY /nginx.conf /etc/nginx/conf.d/default.conf

# Copy wrapper script
COPY --chmod=755 /cmd.sh /

CMD ["/cmd.sh"]
