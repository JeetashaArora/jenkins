# Use the official Node.js image as base
FROM node:12.2.0-Alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the src and public folders to the working directory
COPY src/ ./src
COPY public/ ./public

# Install dependencies using npm ci
RUN sudo npm ci

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
