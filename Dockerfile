# Use an official node.js runtime as a parent image
FROM node:20-slim

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and the package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Install OpenSSL
RUN apt-get update -y && apt-get install -y openssl

# Expose the port that the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "./src/server.js"]

# NOTE: The image size can be optimized by using multi-stage builds to separate development dependencies from production code.
