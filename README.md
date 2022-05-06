# endava-devs
Provisional repository for Endava Developers. Avoid placing any confidential files or information in here.

## Prerequisites

`Java` should be installed (v8.0 or more recent is fine but we prefer 11.0 and newer)

`Maven` should be installed (recommended v3.8.5 or higher)

`Docker` should be installed (recommended v20.10.14 or higher)

`Docker Compose` should be installed (recommended v1.29.0 or higher)


## Useful Commands
### Here you will found some useful commands that you might use.

***Check versions.***
```
sudo docker --version
sudo docker-compose --version
```
***Check if docker engine is running.***
```
sudo service docker status
```

***If docker isnt running you should start it.***
```
sudo service docker start
```

***Stop docker engine.***
```
sudo service docker stop
```
***Start docker compose in background.***
```
sudo docker-compose up -d
```
***Stop docker compose.***
```
sudo docker-compose down
```
***Show docker compose logs.***
```
sudo docker-compose logs
```
***Show docker compose state.***
```
sudo docker-compose ps
```
***Start docker compose service.***
```
sudo docker-compose up -d service_name
```
***Restart docker-compose service.***
```
sudo docker-compose restart service_name
```
