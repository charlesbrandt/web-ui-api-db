# boilerplate

## Working with node under Docker

[Assumes the containers are running](../docker-README.md)

Connect to the containers

    docker-compose exec ui bash

If you cannot connect to the container, see if something is failing with `docker-compose ps`. If the container is crashing, it may be necessary to set it to always on / debug mode in `docker-compose.yml`

    entrypoint: ["tail", "-f", "/dev/null"]

Once you have a shell on the container, you can troubleshoot as necessary.

    yarn

Try running the UI/API build step interactively. Running interactively is useful during development and debugging cycles.

## Build Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn run dev

# build for production and launch server
$ yarn run build
$ yarn run start

# generate static project
$ yarn run generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).

## UI Browser-based Client

A front-end (web-based) application. UI stands for 'User Interface'.

What gets delivered to the client / browser for the person using the service.

Javascirpt (JS) based because Javascript is the language of the web.

## Javascript Front-end Frameworks

There are many types of frameworks within the Node ecosystem.

No preference? Check out Nuxt:

https://zendev.com/2018/09/17/frontend-architecture-lessons-from-nuxt-js.html

## Nuxt

Be sure you've run through [docker-README.md](../docker-README.md) first...

[Cannot use `create-nuxt-app` under docker at the moment](https://github.com/nuxt/create-nuxt-app/issues/383)

Use system node to generate the nuxt-app

    npx create-nuxt-app boilerplate

https://gitlab.com/charlesbrandt/public/-/blob/master/code/javascript/nuxt.md
https://gitlab.com/charlesbrandt/public/

Move the code to the right place, including '.' files. Remove `node_modules`

```bash
rm -r boilerplate/node_modules/
mv boilerplate/* .
mv boilerplate/.* .
rm -r .git
```

and run:

    yarn install

edit package.json:

```
"scripts": {
  "dev": "nuxt --hostname 0.0.0.0",
}
```

from there, run

    yarn run dev

## Browser

Open a browser and see if it works! :)
