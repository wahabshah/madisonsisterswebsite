# Madison Sisters Website

# Build Docker Image

```sh
docker build --rm --pull -f "c:\Users\razor\Projects\MadisonSistersWebsite/Dockerfile" --label "com.microsoft.created-by=visual-studio-code" -t "wahabshah/madisonsisterswebsite:latest" "c:\Users\razor\Projects\MadisonSistersWebsite"
```

# Push Docker Image

```sh
docker push wahabshah/madisonsisterswebsite:latest
```

## Docker Image webhook to deploy on Azure

https://hub.docker.com/repository/docker/wahabshah/madisonsisterswebsite/webhooks
