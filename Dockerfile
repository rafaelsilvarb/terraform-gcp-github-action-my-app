FROM python:3.10-slim-bullseye
EXPOSE 8000
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN nohup gunicorn --log-level debug api:app &
#CMD ["gunicorn","--bind","0.0.0.0:8000","--log-level","debug","api:app"]
