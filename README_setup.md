# Quranic Corpus React Application

## Overview
This project is a React application for the Quranic Corpus, designed to provide a user-friendly interface for exploring Quranic texts and related resources.

## Project Structure
- **src/**: Contains the source files for the React application, including components, hooks, and other JavaScript/TypeScript files.
- **public/**: Contains static files for the application, including `index.html`, which serves as the entry point for the React app.
- **Dockerfile**: Instructions to build the Docker image for the React application.
- **.dockerignore**: Specifies files and directories to ignore when building the Docker image.
- **package.json**: Contains metadata about the project, including dependencies, scripts, and configuration for npm.
- **package-lock.json**: Locks the versions of the dependencies installed in the project.

## Getting Started

### Prerequisites
- Node.js (version 16 or higher)
- npm (Node package manager)
- Docker (for containerization)

### Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   cd quranic-corpus
   ```

2. Install dependencies:
   ```
   npm install
   ```

### Running the Application
To run the application locally, use the following command:
```
npm start
```
This will start the development server, and you can access the application at `http://localhost:3000`.

### Dockerization
To build and run the application using Docker, follow these steps:

1. Build the Docker image:
   ```
   docker build -t quranic-corpus .
   ```

2. Run the Docker container:
   ```
   docker run -p 3000:80 quranic-corpus
   ```

You can then access the application at `http://localhost:3000`.

### All-In-One Using Docker Compose

After building the backend as described in [README_docker.md in the backend repo](https://github.com/bilalix/quranic-corpus-api/blob/dockerize/README_docker.md), run this command:

```
docker-compose up --build -d
```

This will build and run the app in the backgroud, to stop it do a `docker-compose down`

## License
This project is licensed under the MIT License.