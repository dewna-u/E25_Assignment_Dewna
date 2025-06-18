FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files into container (for initial build)
COPY . /usr/share/nginx/html

# Expose port 80 in the container
EXPOSE 80

# Set up a volume for live syncing website files
VOLUME ["/usr/share/nginx/html"]

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
