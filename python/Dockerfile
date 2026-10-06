FROM python:3.9-slim
LABEL python image with less vulnerable
MAINTAINER name=Apsana, mail=aps.com
EXPOSE 5000
WORKDIR /apsana/devops
COPY requirements.txt .
RUN pip install --no-cache -r requirements.txt
COPY app.py .
RUN adduser --system --group aps
RUN chown -R aps:aps /apsana/devops
USER aps
CMD ["python", "app.py"]

