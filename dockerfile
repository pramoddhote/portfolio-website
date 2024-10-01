# Stage 1: Nginx
FROM nginx:alpine

# Copy HTML, CSS, and JavaScript files
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY main.js /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/
COPY pdf/ /usr/share/nginx/html/pdf/

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
