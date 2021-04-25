
Update run.st with the emails and smtp server

Create the image with:

```
docker build --no-cache --progress=plain -t scolr .  
```

Run the container with: 
```
docker run -d -p 8080:8080 -v /data/folder/on/host:/opt/pharo/data scolr
```

If you waht it to restart on failure on or host restart, run the container with: 
```
docker run -d  --restart unless-stopped -p 8080:8080 -v /data/folder/on/host:/opt/pharo/data scolr
```

If you update run.st you need to rebuild the image.

# About the data folder

In the data folder you will find a reviewnator-config.json file, and a reviewnator folder where projects are stored as individual json files.

If missing, the reviewnator-config.json file, and the reviewnator folder will be created.
