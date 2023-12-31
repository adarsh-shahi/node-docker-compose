FROM node:18.16
WORKDIR /app
COPY package.json ./
RUN npm install

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
      then npm install; \
      else npm install --only production; \
      fi

COPY . .
EXPOSE 3500
CMD ["node", "src/index.js"]