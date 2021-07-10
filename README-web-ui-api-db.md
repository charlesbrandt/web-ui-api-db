# web-ui-api-db

a minimalist and flexible container boilerplate
a file structure organization pattern
a foundation to configure a full-stack web-app
a meta framework to use for an application architecture template
a blank slate, a fresh start
focused on devx with a clear path toward production

for an opinionated version that is ready to go, check:

https://gitlab.com/charlesbrandt/fern-seed

https://opensource.guide/starting-a-project/

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

## Conventions / Patterns

use the word 'boilerplate' for project level naming
dashes usually ok, low lines usually ok, _no spaces_, ideally no capitalization

use the string 'web-ui-api-db' for printable name
anything goes here, including spaces and capitalization, as long as it's a permanent string. This string should not change over time. If it does change in one place it should be changed everywhere.

https://localhost:8888
should be used for the public address of the application

https://gitlab.com/charlesbrandt/web-ui-api-db
the project's repository URL

https://gitlab.com/charlesbrandt/web-ui-api-db/-/issues
the project's issues URL

TODO:admins@web-ui-api-db.email
Point of contact:

charlesbrandt
Copyright and username references (do this last to avoid messing up links)

### Find / Replace

Find and replace all instances of `boilerplate` with `project_name`. I like to use VS Code to find and replace across all files and see what is being matched. You could also use a command like the following. Be careful if any of the strings appear in your .git directory.

    find * -type f -exec sed -i 's/boilerplate/project_name/g' {} +

    grep -ir boilerplate *

[via](https://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files/112024#112024)

Look for other instances of the website address and public project name (see above list)

git add .
git commit -m "update project name and references"

## Next Steps

[Infrastructure configuration (Dev-Ops)](README-docker.md)

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
