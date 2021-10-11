# Ghost Docker 

## Vorhandene Images

Vorgebaute Images sind mit 

```bash
docker pull derchef/ghost
```

erhältlich.

## Selbstgebaute Images

Es ist meistens nicht gut alles auf der Hostmaschine zu bauen, deswegen habe ich eine Vagrant Ubunut 20.04 VM benutzt.

Erstellen der Ubuntu 20.04 virtuellen Maschine.

```bash
vagrant init ubuntu/focal64
vagrant up
vagrant ssh
```

Installieren von docker.

```bash
sudo apt update 
sudo apt install -y docker
```

Füge Benutzer zur `docker` Gruppe hinzu, um Berechtigung für Docker zu bekommen.

```bash
sudo usermod $USER -aG docker
```
Wegen dem hinzufügen einer Gruppe muss man sich kurz abmelden und dann wieder anmelden.

```bash
exit
vagrant ssh
```

Jetzt bauen wir den Container. Dazu nehme ich ein `Dockerfile` von Github ([link](https://github.com/docker-library/ghost/blob/master/4/debian/Dockerfile)) und das `docker-entrypoint.sh`.

Ich lade beide herunter mit `wget`.

```bash
wget https://github.com/docker-library/ghost/raw/master/4/debian/Dockerfile
wget https://github.com/docker-library/ghost/raw/master/4/debian/docker-entrypoint.sh
```

Bei meiner Version von `Dockerfile` habe ich bei Zeile 4 

```
FROM node:14-buster-slim
```

durch 

```
FROM node:14
```

ersetzt, dadurch ist das Image größer, aber es inkludiert mehr Tools. 

Ein vorgebautes Image kann man von `docker.io` herunterladen.

Um schlussendlich das Image zu bauen, ersetze <name> mit dem Namen, den du vergeben willst und führe aus:

```bash
docker build . -t derchef/ghost:latest
```

## Ausführen des Containers

Um den Container auszuführen nutze ich `docker-compose`.

```bash
docker-compose up -d 
```

