# Use official Node.js LTS version as base
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port the app listens on
EXPOSE 8080

# Start the app
CMD ["node", "app.js"]
