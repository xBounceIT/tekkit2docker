# tekkit2docker
A docker-compose file structure to start your Tekkit 2 server

## Requirements
- Docker
- docker-compose

## Use
1. Create a directory and name it as you wish
2. Create a file named docker-compose.yml and copy the content of the one from this repo.
```
nano docker-compose.yml
```
3. Start the container
```
docker-compose up -d
```

## Limitations
The use of this docker container has the following limitations:
- The Dockerfile has hardcoded the use of 8GB as server RAM. Server who have less than those available may expierence issues in starting the server.
  - A change in the Dockerfile to include the RAM in the docker-compose will be made.
 
