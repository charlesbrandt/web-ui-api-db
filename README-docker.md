# Web UI API DB in Docker

https://gitlab.com/charlesbrandt/web-ui-api-db

A generalized approach for containerizing web applications.

The architecture provides four primary layers:

- web - static server
- ui - frontend client
- api - backend server
- db - persistence storage

If you have a preferred technology for any given layer, it's easy to replace the default option with your choice.

[More details on the architecture](docs/architecture.md)

## Setup

Create shared volumes to ensure container modules are not confused with host level modules (if you run the same services at the host level):

    docker volume create --name=boilerplate_ui_modules
    docker volume create --name=boilerplate_api_modules

Generate SSL keys with:

    mkdir -p web/ssl
    openssl req -subj '/CN=localhost' -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./web/ssl/nginx.key -out ./web/ssl/nginx.crt

If you have ssl keys from other local projects, feel free to copy those over instead! :)

Choose the port and / or service IP address in `docker-compose.yml`

## Starting / Stopping

At this point you should be ready to launch the server

If you only memorize three docker commands, these are good ones to know.

Bring up the containers:

    docker-compose up -d

Make sure everything is running (no Exit 1 States):

    docker-compose ps

To shut down the containers:

    docker-compose down -v

## Tests

To launch cypress, use:

docker-compose -f docker-compose.yml -f tests/cy-open.yml up -d

## Configuration

Try it out how it is.

The default configuration should be enough to get up and running.

To make adjustments, edit and review [docker-compose.yml](docker-compose.yml).

You can check which ports are available locally and find something unique.

    netstat -panl | grep " LISTEN "

Comment out containers that you don't need right away.

Update the `web/nginx.conf` as needed, especially to proxy requests to the right place on the API server.

To reload nginx without reloading all of the containers:

    docker-compose -p boilerplate exec web nginx -s reload

## What happens next

The UI and API containers have been set to run `yarn` on start up to install / update dependencies.

Set up the [front-end ui client](ui/README-ui.md) or [back-end api server](api/README-api.md) as needed.

## Troubleshooting

Most containers have `curl` available. Connect to one and then try making requests to the service you're having issue with.

    docker-compose -p boilerplate exec web bash
    curl -X GET http://boilerplate_api_1:3030/

(in this case, we don't need the `/api` suffix since we're behind the nginx proxy that normally adds `/api` for us)

Also, you can always insert `console.log()` statements in the code to see what values are at any given point.

## Docker-compose

### -f

If you have a compose file named something other than `docker-compose.yml`, you can specify the name with a `-f` flag:

    docker-compose -p boilerplate -f docker-compose-prod.yml up -d
