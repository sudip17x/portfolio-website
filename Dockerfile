# Use a lightweight Nginx web server as base
FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 for web access
EXPOSE 80

# Run Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
