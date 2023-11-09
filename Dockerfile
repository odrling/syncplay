FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY syncplay syncplay
COPY syncplayServer.py .

EXPOSE 8999
ENTRYPOINT [ "python", "syncplayServer.py" ]
