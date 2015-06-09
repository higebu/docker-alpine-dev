# docker-alpine-dev

Docker image for Alpine Linux Development

## Usage

```
docker run -d --name alpine-dev \
  -e USER_NAME="Yuya Kusakabe" \
  -e USER_EMAIL="yuya.kusakabe@gmail.com" \
  higebu/alpine-dev
docker exec -ti alpine-dev /bin/sh
```
