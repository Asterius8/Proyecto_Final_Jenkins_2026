FROM node:20-alpine

WORKDIR /app

# bcrypt es un módulo nativo (usa node-gyp) y Alpine usa musl en vez de glibc,
# así que necesita estas herramientas para compilarse correctamente durante el npm install
RUN apk add --no-cache python3 make g++

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
