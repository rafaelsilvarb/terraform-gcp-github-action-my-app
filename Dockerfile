FROM python:3.8-alpine
EXPOSE 8000
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
CMD ["gunicorn","--bind","0.0.0.0:8000","--log-level","debug","api:app"]
