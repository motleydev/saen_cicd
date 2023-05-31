# Getting started

Database data migrations are the territory of another tool.
You need to connect a database to all instances of Hasura.

# Github CICD

## Base workflow

1. Connect Hasura CLI (optional) (hasura console)
2. Make metadata changes
3. Persist metadata to `./hasura`
4. Check in to version control
5. Use Github to deploy metadata changes from REPO

(optional) 6. Configure preview apps for per-branch previews.

## CICD Local Development on localhost

1. Run engine locally

Note, schema changes will be applied to the connected database, ie Prod.

## CICD Local Development with remote host.

1. Connect to remote running Hasura

# CLI CICD

## Base workflow

1. Create tooling to run Hasura CLI commands from version control step
2. Connect Hasura CLI (optional)
3. Make metadata changes
4. Persist metadata to `./hasura`

## CICD Local Development on localhost

1. Run engine locally

## CICD Local Development with remote host.

1. Connect to remote running Hasura
