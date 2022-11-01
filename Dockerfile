FROM python:3.8-alpine
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN gunicorn --log-level debug api:app &
