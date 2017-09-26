# Dockerized Angular2 and Django-REST Template App

## Setup

Clone the repo to directory of choice

```
git clone git@github.com:robbdimitrov/fullstack-app.git <project-name>
cd <project-name> && rm -rf .git
```

## Generate projects

### Generate angular project

```
script/generate angular <app-name>
```

### Generate django project

```
script/generate django <django-project-name>
```

If you are running Docker on Linux, the files django-admin created are owned by root. 
This happens because the container runs as the root user. Change the ownership of the new files.

```
sudo chown -R $USER:$USER ./django
```

Generate django app

```
script/generate djangoapp <django-app-name>
```

### Database configuration

Edit the `composeexample/settings.py` file and replace `DATABASES = ...` with the following:

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```

## Build

Build Angular for development or production

```
# these are for development
script/build angular
script/build angular --dev

# this is for production
script/build angular --prod
```

## Deployment

Build images

```
make build
```

Run containers

```
make run
```

Stop containers

```
make stop
```

Clean images and containers

```
make clean
```
