## Preparation

1. Clone repository 

```
git clone https://github.com/bluxmit/mkdocs-magicspace-website.git
```

2. Clone alnoda-workspaces repository

```
git clone https://github.com/bluxmit/alnoda-workspaces.git
```

3. Create symlink

```
ln -s /home/project/alnoda-workspaces/workspaces/mkdocs-magicspace /home/project/mkdocs-magicspace-website/docs/mkdocs-magicspace
```

4. Start Mkdocs dev server 
```
cd mkdocs-magicspace-website
mkdocs serve -a 0.0.0.0:8030
```


## Build 

1. Build Mkdocs

```
cd /home/project/mkdocs-magicspace-website/
mkdocs build -d /home/static-server/docs 
```

2. Commit & push docker image

```
docker commit space-2 alnoda/mkdocs-magicspace-website
docker push alnoda/mkdocs-magicspace-website
```


## Deploy 

1. Set A-record for the sub-domain `mkdocs-magicspace.alnoda.org` to the IP of the. server

2. Generate `docker-compose.yml` using the workspace running on laptop

```
python /home/abc/utils/staticserver.py --image="alnoda/mkdocs-magicspace-website" --domain="mkdocs-magicspace.alnoda.org" --email="bluxmit@gmail.com" --homepage="docs/"
```

3. Ssh to the cloud server, and create `docker-compose.yml`

4. Start serving docs

```
docker-compose up -d
```


