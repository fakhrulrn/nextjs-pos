ARG NODE_VERSION=18

FROM node:${NODE_VERSION}-alpine
 

WORKDIR /app
COPY package*.json ./
RUN npm install

# Copy the rest of the source files into the image.
COPY . .

RUN npm run build

# Expose the port that the application listens on.
EXPOSE 3000

# Run the application.
CMD npm start
