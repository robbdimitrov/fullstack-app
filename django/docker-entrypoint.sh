#!/bin/sh
python manage.py migrate                  # Apply database migrations
python manage.py collectstatic --noinput  # Collect static files

/usr/local/bin/gunicorn docker_django.wsgi:application -w 2 -b :8000
