FROM nginx:alpine

# Copy static files to nginx html directory
COPY /public /usr/share/nginx/html

# Expose port 80
EXPOSE 80


# Set maintainer label
LABEL maintainer="Mike Ryan"

# Health check to ensure the container is running properly
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1