FROM python:3.11.2-bullseye AS build
ENV PYTHONUNBUFFERED 1

WORKDIR /app/cypherk9/

COPY requirements.txt .
COPY bh_schema.txt .
COPY bh_schema_full.txt .
COPY api.py .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "api.py"]