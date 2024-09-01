FROM python:3.10-slim

WORKDIR /app

# Copy requirements.txt from the `backend` directory
COPY ai-recruiter-main/backend/requirements.txt /app/

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the files from the `backend` directory
COPY . /app/

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
