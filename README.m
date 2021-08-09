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

```
cd /home/project/mkdocs-magicspace-website/
mkdocs build -d /home/static-server/docs 
```

## Deploy 

1. Generate `docker-compose.yml`

```
python /home/abc/utils/staticserver.py --image="alnoda/ready-website:0.1" --domain="<YOUR DOMAIN>" --email="<YOUR EMAIL>" --homepage="my-website/"
```

2. Set A-record for the sub-domain `mkdocs-magicspace.alnoda.org` to the IP of the. server
