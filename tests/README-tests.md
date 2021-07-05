# Testing

Currently ships with configurations for Cypress out of the box.

It is possible to launch Cypress from within the docker container.

This is the guide that ultimately got me where I wanted to go:

https://www.cypress.io/blog/2019/05/02/run-cypress-with-a-single-docker-command/

On the host you may need to run `xhost local:root` so the container is allowed to connect to the local X server

via: https://github.com/cypress-io/cypress-docker-images/issues/29

> if you get this error No protocol specified you just run this in your host machine xhost local:root
