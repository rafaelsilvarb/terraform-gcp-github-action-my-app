#!/bin/bash
cd app
nohup gunicorn --log-level debug api:app &
