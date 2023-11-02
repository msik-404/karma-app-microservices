# karma-app-microservices
Repository with docker compose file and bash scripts for setting up the entire karma app from:
- [karma-app-gateway](https://github.com/msik-404/karma-app-gateway)
- [karma-app-posts](https://github.com/msik-404/karma-app-posts)
- [karma-app-users](https://github.com/msik-404/karma-app-users)


# Starting the app
In this repository one can find [docker-compose-yaml](https://github.com/msik-404/karma-app-microservices/blob/main/docker-compose.yaml).

To start the microservice one should use provided bash scripts but pure docker can also be used.

## Bash scripts
Starting microservice: [start.sh](https://github.com/msik-404/karma-app-microservices/blob/main/start.sh)

Stopping microservice: [stop.sh](https://github.com/msik-404/karma-app-microservices/blob/main/stop.sh) 

Cleaning after microservice: [clean.sh](https://github.com/msik-404/karma-app-microservices/blob/main/clean.sh)

To run the scripts make them executable for example:
```
sudo chmod 744 *.sh
```
and then use:
```
./start.sh
```
```
./stop.sh
```
```
./clean.sh
```

## Pure docker method
```
docker compose up
```
When all containers are running, run the following commands in the separate command line.
```
docker exec -it karma-app-microservices-posts-mongo-1 mongosh --eval "rs.initiate()"
```

# Starting the app for testing
Scripts for starting deployment for testings reside under [test](https://github.com/msik-404/karma-app-microservices/tree/main/test) folder.
Use them in the same way as above.

If one would like to use pure docker in testing setup, this command should be run at the end.

```
docker restart karma-app-microservices-posts-mongo-express-1
``` 

To understand why these two last commands are required, check out [karma-app-posts Transaction requirements](https://github.com/msik-404/karma-app-posts#transaction-requirements) repository section.
