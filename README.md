# dryCleaning site

## Main stack - Spring MVC / Spring Data Jpa

## Install and Usage with the Docker

###To create docker images

create mywebapp image
```sh
$ docker build -t mywebapp .
```
create mydb image
```sh
$ docker build -t mydb db/
```
run application
```sh
$ docker-compose up
```
Then you need to open http://localhost:8080/

>It has default Account with administrator rights -
>email: admin@mail.ru password: admin