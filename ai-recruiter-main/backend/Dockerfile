FROM python:3.10-slim

WORKDIR /app

# Copy requirements.txt from the `backend` directory
COPY ai-recruiter-main/backend/requirements.txt /app/

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the files from the `backend` directory
COPY ai-recruiter-main/backend /app/

# Make entrypoint script executable
RUN chmod +x ./entrypoint.sh

# Expose port 5000 for Flask
EXPOSE 5000

# Define entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
