#A simple DjangoDockerComposeCeleryRedisPostgresql with a simple task for Beginners

use Django without installing it or  by VM
-Django-Docker-Compose-Celery-Redis-PostgreSQL
the process of setting up a Docker Compose file to create a Django, Redis, Celery and PostgreSQL environment. 
Starting from a new Django project the outcome of this tutorial you will have a development setup which will
allow you to work with the named tools without having to installing them in your OS env


django-admin startproject core .
python manage.py startapp app

in docker-compose:
 
alpine: is  slimline linux package 


add in project setting   the app and  also  

CELERY_BROKER_URL = os.environ.get("CELERY_BROKER", "redis://redis:6379/0")
CELERY_RESULT_BACKEND = os.environ.get("CELERY_BROKER", "redis://redis:6379/0")


inside the project add  celery.py and a simple celery instance

tasks.py 
add some  code inside the core  init.py

docker-compose run django
ctrl+C
docker-compose up 

after we can see we have  db.sqlite3  appears 

rebuild :
docker-compose run django
ctrl+C
docker-compose up 

After all, everything is running nicely 

open a new cmd terminal :
for the django instance open a  second terminal :

To run a celery task we do following:
docker exec -it django sh
# python manage.py shell

>>> from app.tasks import add
>>> add.delay(2,2)

refer to the 1st terminal  we see:
djangodockercomposeceleryredispostgresql-celery-1  | [2023-10-11 10:48:45,937: INFO/ForkPoolWorker-4]
 Task app.tasks.add[6f4fe974-1be3-4804-8143-f4dcddff80a6] succeeded in 0.015568799997708993s: 4

Done
