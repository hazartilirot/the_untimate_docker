## Getting Started

To proceed with a project deployment, please download [Docker Desktop](https://www.docker.com/products/docker-desktop).
Once downloaded install it to your PC.

Open PowerShell executing the following command:
### `docker-composer -v`
if you get an error add an absolute path to docker-composer into the PATH 
environment variable.
Press **WIN + S**, type **env** and select **Edit the system environment variables**

## Installing dependencies
Open **./backend** directory as you finished do exactly the same in **./frontend**, 
install dependencies:
### `npm install`
Alternatively if you don't want changes to be live meaning everything you 
change in your local directory would be automatically changed in a container 
you therefore need to open **docker-compose.yml** and delete **volumes:** 
with a parameter - **./backend:/app** or - **./frontend:/app** accordingly. 
Otherwise it may break a deployment.

## Docker Composer
Assuming you're in the root directory of the project in PowerShell
### `docker-composer -f docker-compose.yml build`
provided you need to rebuild images from scratch, enter
### `docker-composer -f docker-compose.yml build --no-cache`
if you get an error add docker-composer into the PATH environment variable.
Press **WIN + S**, type **env** and select **Edit the system environment variables**

## Run containers
`docker-compose up`

## Stop and remove containers
`docker-compose down`

## Run containers in a detached mode
`docker-compose up -d`

## Run containers in interactive mode
`docker exec -it #containerID sh`

## Run/Stop containers selectively
`docker start/stop #containerID`

## Delete Images
`docker rmi $(docker image ls -aq)`

## Delete Images Forcefully
`docker rmi -f $(docker image ls -aq)`

## List all containers
`docker ps -a`

## List all images
`docker images`

## Logs
`docker logs #containerID`



