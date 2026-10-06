FROM node:22-alpine
LABEL Less vulnerable nodjs img
MAINTAINER name=Aps, mail=aps.com
EXPOSE 300
WORKDIR /apsana/devops
COPY package*.json .
RUN npm install --production
RUN adduser -D aps
RUN chown aps:aps /apsana/devops
USER aps
COPY . .
CMD ["node", "index.js"]

