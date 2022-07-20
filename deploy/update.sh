#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='https://github.com/Tahedi1/profiles-rest-api.git'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
