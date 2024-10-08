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
![CI Workflow]![CI Workflow](https://github.com/user-attachments/assets/0b35f6fe-18a7-4287-92cd-63dabd4b75c2)


## CD Workflow
- After the CI steps successfully complete, the CD workflow pushes the latest Docker image to Docker Hub automatically.

### CD Workflow Screenshot:
![CD Workflow]![CDworkflow](https://github.com/user-attachments/assets/a2975ec3-cbb4-40e4-afb6-0d89cc4a4e91)


## Docker Hub Setup
The Docker image is pushed to the Docker Hub repository `tmull/githubactions` after every successful build.

### Docker Hub Repository Screenshot:
![Docker Hub]![dockerhub](https://github.com/user-attachments/assets/f54ed83b-0f78-4ad5-a2c7-521a15e18ff7)


## Secrets Used
- `DOCKER_USERNAME`: Docker Hub username stored securely in GitHub Secrets.
- `DOCKER_PASSWORD`: Docker Hub password stored securely in GitHub Secrets.

### Secrets Setup Screenshot:
![Secrets Setup]![DOCKERPASSUSER](https://github.com/user-attachments/assets/d3efd918-032b-4924-a565-c3231dab591c)


## How to Deploy Locally
1. Pull the Docker image from Docker Hub:
   ```bash
   docker pull tmull/githubactions:latest
