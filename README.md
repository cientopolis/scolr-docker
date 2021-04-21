Create the image with:

docker build --progress=plain -t scolr

Create the container with:

docker run -p 8080:8080 -v /data/folder/on/host:/opt/pharo/data -t scolr
