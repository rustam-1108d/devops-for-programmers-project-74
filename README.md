[![Actions Status](https://github.com/rustam-1108d/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/rustam-1108d/devops-for-programmers-project-74/actions)
[![ci](https://github.com/rustam-1108d/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/rustam-1108d/devops-for-programmers-project-74/actions/workflows/push.yml)

# Packaging with Docker Compose

## Description
This [project](https://ru.hexlet.io/programs/devops-for-programmers/projects/74) is built as part of the [Hexlet DevOps for Programmers](https://ru.hexlet.io/programs/devops-for-programmers) course.

In this project, students package the [js-fastify-blog](https://github.com/hexlet-components/js-fastify-blog) application into a Docker image. The application follows the [12-factor methodology](https://12factor.net/), which minimizes differences between the development and production environments.

Docker Compose is used to set up the environment for development, running tests, and CI. After the CI process completes successfully, the application image is built and published to [hub.docker.com](https://hub.docker.com/).

## Requirements

- Docker
- Docker Compose (version 1.27.0 or higher)
- Make

## Setup

1. Clone the repository:

```bash
git clone https://github.com/rustam-1108d/devops-for-programmers-project-74.git
cd devops-for-programmers-project-74
```

2. Create an `.env` file based on `.env.example`:

```bash
make ensure-env
```

3. Run the setup:

```bash
make compose-setup
```

4. Start the development server:

```bash
make compose-dev
```

The app will be available at [https://localhost](https://localhost)

## Running Tests

```bash
make compose-test
```

## Docker Hub

Docker image: [rustam2/devops-for-programmers-project-74](https://hub.docker.com/r/rustam2/devops-for-programmers-project-74)

To start the app using the Docker image, run:

```bash
docker run --rm -it -p 8080:8080 -e NODE_ENV=development rustam2/devops-for-programmers-project-74 make dev
```

The application will be available at [http://localhost:8080](http://localhost:8080)