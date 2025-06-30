FROM public.ecr.aws/docker/library/node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
ENV NODE\_OPTIONS=--openssl-legacy-provider
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

