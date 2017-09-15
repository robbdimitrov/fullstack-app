#!/bin/sh
python manage.py migrate                  # Apply database migrations
python manage.py collectstatic --noinput  # Collect static files

/usr/local/bin/gunicorn django_server.wsgi:application -w 2 -b :8000
