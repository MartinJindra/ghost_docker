# Ghost with Node based on Debian 10

## Vorhandene Images

Downloaden eines vorgebaute Image.

```bash
docker pull derchef/ghost
```

Dieses Image basiert auf `node:14-buster`.

`Dockerfile` basiert auf [link](https://github.com/docker-library/ghost/blob/master/4/debian/Dockerfile).

`docker-entrypoint.sh` basiert auf [link](https://github.com/docker-library/ghost/blob/master/4/debian/docker-entrypoint.sh).

## Ausführen des Containers

Um den Container auszuführen nutze ich `docker-compose`.

```bash
docker-compose up -d
```

[Github Repo](https://github.com/MartinJindra/ghost_docker)
