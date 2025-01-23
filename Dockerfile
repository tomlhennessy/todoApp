# Use an official node.js runtime as a parent image
FROM node:20-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update -y && apt-get install -y openssl

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Generate Prisma Client
RUN npx prisma generate

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "./src/server.js"]
