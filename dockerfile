# Specify the parent image from which we build
FROM node:14

# Set the working directory
WORKDIR /app

# Copy files from your host to your current working directory
COPY . /app/

# Build the application with cmake
RUN npm install

#Expose port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
