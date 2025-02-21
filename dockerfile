# Use the official Node.js image as a base
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install JSON Server globally
RUN npm install -g json-server

# Copy the db.json file to the working directory
COPY db.json ./

# Expose the port that JSON Server runs on
EXPOSE 3000

# Start JSON Server
CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0"]