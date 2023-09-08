# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose a port (if your Node.js application listens on a specific port)
EXPOSE 80

# Define the command to run your Node.js application
CMD ["node", "index.js"]