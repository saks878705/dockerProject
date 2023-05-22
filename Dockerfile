# Start your image with a node base image
FROM node

# The /app directory should act as the main application directory
WORKDIR /app

# Copy the app package and package-lock.json file
# COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
COPY . /app

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install 

CMD npm start