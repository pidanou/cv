FROM node:current-slim

COPY . .

RUN npm i 

RUN npm run build

CMD npm run preview
