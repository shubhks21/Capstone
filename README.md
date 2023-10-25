## Project Summary

In this project, I have applied the skills that I have acquired throughout the programme and demostrated them by building it. 

I used the ["Hello World" app](https://github.com/shubhks21/project-ml-microservice-kubernetes/tree/feature/circleci/Lesson-3-Containerization/python-helloworld) as a reference for this project.

### Project Objectives Achieved

* Tested the code using linting
* Completeted a Dockerfile to containerize this application
* Deployed a containerized application using Docker
* Created Amazon EKS cluster and configured it
* Deployed a sample Python "Hello World" app to the kubernetes cluster using blue-green and rolling deployment strategies.
* Uploaded a complete Github repo with CircleCI to indicate that my code has been tested

Detailed [project rubric, here](https://review.udacity.com/#!/rubrics/5068/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Short Explanation of Files

The repository "project-ml-microservice-kubernetes" contains the files necessary to deploy a machine learning application using Kubernetes.

### Description of files

Dockerfile: This file is used to build the Docker image for the application. It specifies the base image, installs dependencies, and copies the application code into the image.

Makefile: This file contains a set of commands that automate the build, test, and deployment processes. It provides shortcuts for common tasks, such as building the Docker image, running tests, and deploying the application.

app.py: This is the main Python file that contains the Flask application. It defines the routes and handles the requests from the users.

make_prediction.sh: This shell script sends a POST request to the running application to make a prediction. It takes a sample payload as input and returns the prediction result.

requirements.txt: This file lists all the Python dependencies required by the application. These dependencies will be installed when building the Docker image.

run_docker.sh: This shell script builds the Docker image using the Dockerfile and runs the containerized application.

run_kubernetes.sh: This shell script deploys the application to a Kubernetes cluster. It creates a deployment and a service for the application.

upload_docker.sh: This shell script tags and uploads the Docker image to Docker Hub. It requires you to provide your Docker Hub username and image name.
