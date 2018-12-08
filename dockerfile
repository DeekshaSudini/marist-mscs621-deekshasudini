FROM node

WORKDIR home/assistant-simple

COPY package.json .

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
