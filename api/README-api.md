# boilerplate-api

> The back-end server.

## About

Application actions are defined at the API. Things like authentication, authorization, and persistence or storage usually happen here.

By default, the boilerplate is [configured to use a Node JS based api server](../docker-compose.yml).

You could just as easily substitute Python or any other language that you prefer.

## Node API Frameworks

There are many types of frameworks within the Node ecosystem.

## Configuration Reminder

Make sure that the API is listening on 0.0.0.0 _within the container_, not just localhost. This allows other containers on the docker network to access the service. If you're forwarding traffic through nginx to the API, nginx needd to be able to talk to the API server over the docker network.

For example, with express, configure with:

```
exports.express = {
  host: "0.0.0.0",
  port: 12345,

```
