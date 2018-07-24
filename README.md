# BookStore-Web-App

This is a web application made using Angular as front-end framework, Spring Boot as backend and Redis as the DBMS to back HttpSessions.

how to deploy the web site:

1.- clone this repository.
2.- run the DomBookstore.sql in MySQL Workbench
3.- open the Redis folder and start the redis-server.exe, then staert the redis-cli.exe. Type "monitor" in the redis-cli.exe (this will allow your to monitor the logins and logouts from the clients)
4.- configure the application.properties in the Spring Boot project with your email and password.
5.- run the Spring Boot project.
6.- git bash in the store-front root folder and run the "ng serve --port 4201" command.

At this point you shouls be able deploy the web application.
