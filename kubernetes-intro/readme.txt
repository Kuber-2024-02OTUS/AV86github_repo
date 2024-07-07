# build:
docker build -t avolchkov/otus24-nginx:1.0 .

docker run -d -h nginx --name nginx -p 80:8000 avolchkov/otus24-nginx:1.0