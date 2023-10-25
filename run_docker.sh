
#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker --version

# Step 1:
# Build image and add a descriptive tag
docker build --tag=capstone .

# Step 2: 
# List docker images
docker images list
docker images

# Step 3: 
# Run flask app
docker run -p 8080:80 capstone

# Step 3: 
# Stop the container
docker ps