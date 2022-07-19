# django_spa

REST API service and Single Page Application (SPA) base on Django

# Installation

1. Import [spa.sql](./postgres/spa.sql) to your `Postgres`.
2. Django settings: [.env](./backend/,env)

```
DEBUG=false
SECRET_KEY=xxxx
POSTGRES_DB=assignment
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_HOST=192.168.100.115
POSTGRES_PORT=5432
REDIS_LOCATION=redis://192.168.100.115:6379/1
```

3. Docker compose

```
docker-compose up
```