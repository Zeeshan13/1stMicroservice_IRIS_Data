# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

# Train the model
RUN python model.py

CMD ["python", "app.py"]
