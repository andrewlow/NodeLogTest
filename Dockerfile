FROM node:carbon-alpine

# Create app directory
WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN npm install --only=production

EXPOSE 3000
CMD [ "npm", "start" ]
