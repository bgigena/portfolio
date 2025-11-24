# Stage 1: The Base (Not strictly needed for static HTML but good practice for structure)
# Using nginx:alpine for minimal footprint
FROM nginx:alpine

# Label for metadata
LABEL maintainer="Braian <tuemail@ejemplo.com>"
LABEL description="Portfolio estático optimizado"

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets from host to container
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Copy custom nginx config if we had one (using default for now is fine for simple static)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
