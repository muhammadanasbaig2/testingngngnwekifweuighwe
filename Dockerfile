FROM python:3.8-slim

MKDIR /app

RUN pip install --no-cache-dir jupyterlab

ENV PORT=8080

EXPOSE 6280


CMD jupyter lab --ip=0.0.0.0 --port=${PORT} --no-browser --allow-root
