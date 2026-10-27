# ---------- Etapa 1: build ----------
FROM node:20-alpine AS build

WORKDIR /app

# Copiamos primero los manifiestos para aprovechar la cache de Docker
COPY package*.json ./
RUN npm install

COPY . .

# Vite "hornea" las variables VITE_* dentro del bundle en tiempo de build,
# por eso las recibimos como ARG y las pasamos a ENV antes de compilar
ARG VITE_API_URL
ARG VITE_RECAPTCHA_SITE_KEY
ENV VITE_API_URL=$VITE_API_URL
ENV VITE_RECAPTCHA_SITE_KEY=$VITE_RECAPTCHA_SITE_KEY

RUN npm run build

# ---------- Etapa 2: servidor estático ----------
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
