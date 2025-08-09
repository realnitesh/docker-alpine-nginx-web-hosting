# Build image
docker build -t nginx:alpine .

# Run container
docker run -d -p 8080:80 nginx:alpine
