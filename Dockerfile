# Start from a minimal Alpine image
FROM alpine:latest

# Install nginx
RUN apk add --no-cache nginx

# Remove default Nginx files and copy your website
RUN rm -rf /var/lib/nginx/html/*
COPY ./website/ /var/lib/nginx/html/

#Copy custom nginx config
RUN rm -rf /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
