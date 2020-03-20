FROM python:3.8-slim

RUN apt update -y && apt install -y gcc
RUN pip3 install flask uWSGI

COPY src/uwsgi.ini /uwsgi.ini
COPY src/app.py /app.py

CMD ["uwsgi", "--ini", "uwsgi.ini"]