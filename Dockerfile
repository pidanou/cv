FROM node:current-slim

RUN npm i 

RUN npm run build

CMD npm run preview