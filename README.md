#  Resolve Demo App

## description
During 1 hour 25 minutes time, I was able to complete the following:
    - We must be able to post an URL into a route and get back a new URL with the shortest possible length.
    - We must be redirected to the full URL when we enter the short URL (ex:
    http://localhost:3000/a => https://google.com)
    - There should be an endpoint that returns top 100 most frequently accessed URLs.
    - Display the title with the URL on the top 100 endpoint.
    - There must be a README that explains how to setup the application and the algorithm used for generating the URL short code.

And deployed on Heroku

- Wrote a speed
- Count not write unit tests

## Setup

If this is your first time setting up the project, you should do the following after cloning the repository:

### Setup docker
Install docker in your machine if not installed before (https://docs.docker.com/install/)

To setup project do following command to setup docker project:
```bash
docker-compose up --build
```

### Setting up credentials
If `config/master.key` does not exist then create a file and add a secret hash inside.
Take all credential details from config/credentials.example.yml and save in actual credential file.
To edit credential file use following command:
```bash
docker-compose run --rm -e EDITOR=nano app bin/rails credentials:edit
```

### Setup DB and run migrations

```bash
docker-compose run app rake db:create
docker-compose run app rake db:migrate
docker-compose run app rails db:migrate RAILS_ENV=test
```

## Run application

To run the application:

```bash
docker-compose up
```

The app server should be running on (http://127.0.0.1:7004)

## Rails Console

To enter Rails console, run the following:

```bash
script/console
```
## Machine

To enter access machine:

```bash
script/machine
```
## Debugging

### `byebug`

`byebug` is running remotely in the development environment. If you want to
debug the web server, you can connect remotely to byebug by running:

```bash
script/debug
```

## Troubleshooting

If you face this issue, run the following commands:

```bash
rm tmp/pids/server.pid
docker-compose up -d
```
