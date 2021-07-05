# web-ui-api-db

a minimalist and flexible container boilerplate
a file structure organization pattern
a foundation for starting and configuring full-stack web applications
a meta template architecture
focused on devx with a clear path toward production

for an opinionated version that is ready to go, check:

https://gitlab.com/charlesbrandt/fern-seed

## Containers

This pattern leverages docker containers and docker-compose. If you're new to containers or need to get the software installed, [maybe give this guide a try](https://gitlab.com/charlesbrandt/public/-/blob/main/system/virtualization/docker.md).

## Setup

    git init

Confirm the remote server is set to your own repo:

    git remote -v

Then add in web-ui-api-db as the upstream

```
git remote add upstream https://gitlab.com/charlesbrandt/web-ui-api-db

git fetch upstream
git merge --allow-unrelated-histories upstream/main
# or whichever branch you want to merge
```

## Default branch

The default branch on `git init` is currently set to master.
If you want to change it to `main`, this is a good point to do so.

```
git checkout -b main
git branch -d master
git branch -a
```

## Upstream Updates

Upstream is not configured automatically after a fresh checkout.

```
git remote -v

git remote add upstream https://gitlab.com/charlesbrandt/web-ui-api-db

git fetch upstream
git merge upstream/main
```

## Conventions

use the word 'boilerplate' for project level naming
dashes ok, low lines ok, _no spaces_, ideally no capitalization

use the string 'web-ui-api-db' for printable name
anything goes here, including spaces and capitalization, as long as it's a permanent string (does not change over time... a change in one place changes everywhere. valid ID)

use the link
https://gitlab.com/charlesbrandt/web-ui-api-db
to find and replace for the project's URL

### Find / Replace

Should only need to do this the first time you set up a new project. After that, updates will happen on merge upstream.

ind and replace all instances of `boilerplate` with `project_name`. (Manually or with a script)

    find * -type f -exec sed -i 's/boilerplate/project_name/g' {} +

    grep -ir boilerplate *

[via](https://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files/112024#112024)

Look for other instances of the website address and public project name (via case insensitive search)

Web-UI-API-DB

Update as appropriate.

git add .
git commit -m "update project name and references"

## Next Steps

[Infrastructure configuration (Dev-Ops)](docker-README.md)

    git mv README.md README-web-ui-api-db.md

If you want to keep it around as a reference. (It's already in your git repo, so it's not costing you space. ;) )

Or if you want to keep things clean

    git rm README.md

This breaks the association (a good thing!) so you won't keep getting conflicts in your README.md files when trying to merge upstream.

    cd ui
    yarn
    yarn run cypress open

## Additional documentation

    ui/content/\*
