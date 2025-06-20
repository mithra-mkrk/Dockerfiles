# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy your application files into the Nginx web root
# For a simple test, let's create an index.html
RUN echo "<h1>Hello from my Docker Image!</h1>" > /usr/share/nginx/html/index.html

# Expose port 80, which Nginx listens on by default
EXPOSE 80
EXPOSE 443

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]