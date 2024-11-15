# Docker Compose Flask and Nginx

Join a **container** with Flask application powered by Waitress WSGI server to display a basic html website and a **container** using Nginx to port forward HTTP calls to the html contents.

```
docker compose up --build
```

---

# Flask-Nginx in Docker

Container with Flask application powered by Waitress WSGI server to display a basic html website using NGINX to port forward HTTP calls to the html contents.

```
docker build --tag flask-nginx ./flask-nginx
docker run -d -it --rm -p 80:80 --name flask-nginx flask-nginx
```

---

# Nginx-Only in Docker

Container to display a basic html website using NGINX to port forward HTTP calls to the html contents.

```
docker build --tag nginx-only ./nginx-only
docker run -d -it --rm -p 80:80 --name nginx-only nginx-only
```
