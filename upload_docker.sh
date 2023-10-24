

# Step 1:
# Create dockerpath
dockerpath="shubhks21/capstone"

# Step 2:  
# Authenticate & tag
echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin
docker tag capstone ${dockerpath}
echo "Docker ID and Image: $dockerpath"


# Step 3:
# Push image to a docker repository
docker push ${dockerpath}