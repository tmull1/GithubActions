# CI/CD Workflow Documentation

## Overview
This project automates Continuous Integration (CI) and Continuous Deployment (CD) using GitHub Actions and Docker. The Docker image is built and pushed to Docker Hub upon every push to the `master` branch.

## CI Workflow
- On every push to the master branch, the workflow:
  1. Checks out the repository.
  2. Builds the Docker image.
  3. Logs into Docker Hub.
  4. Pushes the Docker image to Docker Hub.
  5. Runs the Docker container.

## CD Workflow
- The Docker image is automatically pushed to Docker Hub with the latest code after every successful build.

## Secrets Used
- `DOCKER_USERNAME`: Docker Hub username stored securely in GitHub Secrets.
- `DOCKER_PASSWORD`: Docker Hub password stored securely in GitHub Secrets.

## How to Deploy Locally
1. Pull the Docker image from Docker Hub:
   ```bash
   docker pull tmull/githubactions:latest
