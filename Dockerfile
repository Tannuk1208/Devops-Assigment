
# Use the official Node.js image
FROM node:23.3.0

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
