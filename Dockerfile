# Stage 1: The Base (Not strictly needed for static HTML but good practice for structure)
# Using nginx:alpine for minimal footprint
# Stage 1: The Base
# Using specific version for reproducibility and security updates
FROM nginx:1.25.3-alpine

# Label for metadata
LABEL maintainer="Braian <tuemail@ejemplo.com>"
LABEL description="Portfolio estático optimizado"

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets from host to container
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Healthcheck to ensure the service is running
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
