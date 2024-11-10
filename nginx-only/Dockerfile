# syntax=docker/dockerfile:1

FROM nginx:1.27-bookworm

EXPOSE 80

# Copy index.html and image to default location
COPY /html /usr/share/nginx

CMD ["nginx", "-g", "daemon off;"]
