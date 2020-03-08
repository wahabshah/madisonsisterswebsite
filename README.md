# Madison Sisters Website

# Build Docker Image

docker build --rm --pull -f "c:\Users\razor\Projects\MadisonSistersWebsite/Dockerfile" --label "com.microsoft.created-by=visual-studio-code" -t "wahabshah/madisonsisterswebsite:latest" "c:\Users\razor\Projects\MadisonSistersWebsite"

# Push Docker Image

docker push wahabshah/madisonsisterswebsite:latest

