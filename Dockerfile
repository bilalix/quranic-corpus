# Use a lightweight Node.js image
FROM node:18.19.1-alpine AS build

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies using the lock file
RUN npm ci

# Copy the rest of the application code
COPY . .

# Accept build arguments and set them as environment variables
ARG REACT_APP_API_BASE_URL
ENV REACT_APP_API_BASE_URL=${REACT_APP_API_BASE_URL}

# Build the React application
RUN npm run build

# Use a lightweight web server for serving the production build
FROM nginx:alpine AS production

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the build output to the Nginx HTML directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]