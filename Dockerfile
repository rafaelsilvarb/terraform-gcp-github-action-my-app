FROM python:3.10
COPY app/requirements.txt /
RUN pip3 install -r requirements.txt
COPY app/ /app
WORKDIR /app
EXPOSE 8000
#ENTRYPOINT ["./start.sh"]
ENTRYPOINT ["gunicorn","--bind","0.0.0.0:8000","--log-level","debug","api:app"]
