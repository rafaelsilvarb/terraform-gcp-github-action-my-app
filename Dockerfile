FROM python:3.8-alpine
WORKDIR app
RUN pip3 install -r app/requirements.txt
RUN cd app
RUN gunicorn --log-level debug api:app &
