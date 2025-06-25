FROM python:3.10-slim
WORKDIR /app
COPY alert_webhook.py .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && \
    apt-get update && \
    apt-get install -y ansible docker.io
CMD ["python", "alert_webhook.py"]
