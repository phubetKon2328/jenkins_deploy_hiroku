# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY app/ .

# Expose the port on which your Express application runs (replace 3000 with your actual port)
EXPOSE 3000

# Command to start the application
CMD ["node", "app.js"]
