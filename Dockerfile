FROM python:3.9
COPY ./app /app
WORKDIR /app
EXPOSE 8000
COPY app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#ENTRYPOINT ["./start.sh"]
ENTRYPOINT ["gunicorn","--bind","0.0.0.0:8000","--log-level","debug","api:app"]
