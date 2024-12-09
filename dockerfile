# Use a lightweight web server base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy the application files to the container
COPY . .

# Expose port 80
EXPOSE 5000
