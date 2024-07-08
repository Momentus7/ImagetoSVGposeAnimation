# Use a Node.js version compatible with the dependencies
FROM node:12

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 1234

# Run the application
CMD ["yarn", "watch"]
