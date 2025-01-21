# Use the official Node.js image from Docker Hub
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
