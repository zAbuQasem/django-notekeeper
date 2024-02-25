FROM python:3.8-slim-bullseye
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
WORKDIR ./notekeeper/
RUN python manage.py migrate
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:80"]
