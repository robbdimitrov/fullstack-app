# Dockerized Angular2 and Django-REST Template App

## Setup

Clone the repo to directory of choice

```
git clone git@github.com:robbdimitrov/fullstack-app.git <project-name>
cd project-name && rm -rf .git
```

## Generate projects

### Generate angular project

```

```

### Generate django project

```
docker-compose run --no-deps --rm web django-admin.py startproject <project-server-name> .
```

If you are running Docker on Linux, the files django-admin created are owned by root. 
This happens because the container runs as the root user. Change the ownership of the new files.

```
sudo chown -R $USER:$USER .
```

Generate django app

```
docker-compose run --no-deps --rm web python manage.py startapp <app-name>
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

## Deployment

Build images

```
docker-compose build
```

Run containers

```
docker-compose up
```
