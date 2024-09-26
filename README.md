# CI/CD Workflow Documentation

## Overview
This project automates Continuous Integration (CI) and Continuous Deployment (CD) using GitHub Actions and Docker. The Docker image is built and pushed to Docker Hub upon every push to the `master` branch.

## CI Workflow
- On every push to the master branch, the workflow:
  1. Checks out the repository.
  2. Builds the Docker image.
  3. Logs into Docker Hub using stored credentials.
  4. Pushes the Docker image to Docker Hub.
  5. Runs the Docker container locally.

### CI Workflow Screenshot:
![CI Workflow](../path/to/CI%20Workflow.PNG)

## CD Workflow
- After the CI steps successfully complete, the CD workflow pushes the latest Docker image to Docker Hub automatically.

### CD Workflow Screenshot:
![CD Workflow](../path/to/CDworkflow.PNG)

## Docker Hub Setup
The Docker image is pushed to the Docker Hub repository `tmull/githubactions` after every successful build.

### Docker Hub Repository Screenshot:
![Docker Hub](../path/to/dockerhub.PNG)

## Secrets Used
- `DOCKER_USERNAME`: Docker Hub username stored securely in GitHub Secrets.
- `DOCKER_PASSWORD`: Docker Hub password stored securely in GitHub Secrets.

### Secrets Setup Screenshot:
![Secrets Setup](../path/to/DOCKERPASSUSER.PNG)

## How to Deploy Locally
1. Pull the Docker image from Docker Hub:
   ```bash
   docker pull tmull/githubactions:latest
