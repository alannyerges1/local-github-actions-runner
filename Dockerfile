# Use official Node image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose app port
EXPOSE 3000

# Command to run the app when the container starts
CMD ["node", "server.js"]
