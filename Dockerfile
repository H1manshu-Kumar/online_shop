# Base Image(OS), Using the latest LTS version of Node.js
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm Install

# Copy the code from host to container
COPY . .

# Expose the port for running the application
EXPOSE 5173

# Define the command to run app
CMD ["npm", "start"]