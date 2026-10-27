FROM mysql:8.0

# Todo lo que pongas en /docker-entrypoint-initdb.d/ se ejecuta UNA sola vez,
# en orden alfabético, la primera vez que el volumen de datos está vacío
COPY init/ /docker-entrypoint-initdb.d/

EXPOSE 3306
