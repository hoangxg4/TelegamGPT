FROM python:3.9.18-slim-bullseye

WORKDIR /app

COPY ./ /app/

RUN apt-get update && \
    apt-get install -y gcc && \
    pip install --no-cache-dir -r requirements.txt

CMD flask run -h 0.0.0.0 -p 10000 & python main.py
