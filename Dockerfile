# Use the official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies and build
RUN npm install && npm run build

# Expose WebStudio's port
EXPOSE 3000

# Start WebStudio
CMD ["npm", "start"]
