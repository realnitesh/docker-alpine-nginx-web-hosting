# docker-alpine-nginx-web-hosting

A lightweight web hosting solution using Docker with Alpine Linux and Nginx.

## Overview

This repository provides a simple way to host static websites using Docker. It uses Alpine Linux as the base image for minimal size and Nginx as the web server.

## How it works

The Dockerfile:
- Pulls the Alpine Linux image from Docker Hub
- Installs Nginx inside the Alpine container
- Copies website content to the container
- Copies Nginx configuration to the container
- Exposes port 80
- Runs Nginx in the foreground

## Prerequisites

- Docker installed on your system
- Git (for cloning the repository)

## Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/docker-alpine-nginx-web-hosting.git
cd docker-alpine-nginx-web-hosting
```

### 2. Add your website files

Place your website files (HTML, CSS, JavaScript, images, etc.) in the `website/` folder. The current structure includes:
- `index.html` - Main HTML file
- `styles.css` - CSS styles
- `script.js` - JavaScript functionality

### 3. Make the start script executable (Linux/macOS)

```bash
chmod +x start.sh
```

### 4. Run the start script

```bash
sh start.sh
```

## What happens when you run start.sh

The script will:
1. Build the Docker image using the Dockerfile
2. Run the container on port 8080
3. Make your website accessible at `http://localhost:8080`

## Accessing your website

Once the container is running, open your web browser and navigate to:
```
http://localhost:8080
```

## Stopping the container

```bash
docker stop container-name
docker rm container-name
```

## Customization

### Changing the port
To run on a different port, modify the `-p` flag in the docker run command:
```bash
docker run -d -p 3000:80 --name my-website alpine-nginx-website
```

### Modifying Nginx configuration
Edit the `nginx.conf` file to customize Nginx settings like:
- Server blocks
- Gzip compression
- Security headers
- Custom error pages

## File Structure

```
docker-alpine-nginx-web-hosting/
├── Dockerfile          # Docker image definition
├── nginx.conf         # Nginx configuration
├── start.sh           # Startup script
├── README.md          # This file
└── website/           # Your website files go here
    ├── index.html
    ├── styles.css
    └── script.js
```

## Troubleshooting

### Port already in use
If port 8080 is already in use, either:
- Stop the conflicting service, or
- Use a different port in the docker run command

### Permission denied on start.sh
Make sure you've made the script executable:
```bash
chmod +x start.sh
```

### Container won't start
Check Docker logs:
```bash
docker logs container-name
```

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open source and available under the [MIT License](LICENSE).
