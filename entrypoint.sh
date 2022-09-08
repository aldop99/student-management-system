#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn student_management_system.wsgi:application --bind 0.0.0.0:9000