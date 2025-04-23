FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY cereal.db .

COPY src/ .

EXPOSE 5000

CMD ["python", "cereal_api.py"]