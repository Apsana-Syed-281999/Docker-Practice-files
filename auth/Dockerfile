# Base image
FROM python:3.9-slim

#Details
LABEL python image for auth
MAINTAINER name=Apsana, mail=aps.com

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy service code
COPY . .

# Adding User
RUN adduser --system --group aps
RUN chown -R aps:aps /app
USER aps

# Default command (will be overridden in docker-compose)
CMD ["python", "auth_service.py"]
