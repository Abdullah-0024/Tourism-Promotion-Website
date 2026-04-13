# Use a lightweight Nginx image to serve static files
FROM nginx:alpine

# Copy the compiled website files from the dist folder to the Nginx HTML folder
COPY dist/ /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]