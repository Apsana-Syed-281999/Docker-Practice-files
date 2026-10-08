# Base image
FROM python:3.9-slim

#Details
LABEL python image for main app.py
MAINTAINER Apsana

#Set working directory
WORKDIR /app

#Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app.py + templates
COPY app.py .
COPY templates ./templates

#Adding user
RUN adduser --system --group aps
RUN chown -R aps:aps /app
USER aps

#To run the application
EXPOSE 5000
CMD ["python", "app.py"]

