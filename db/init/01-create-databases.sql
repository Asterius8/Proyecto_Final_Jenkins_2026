-- Crea las dos bases que usa el backend (ver backend/config/db.js y db2.js)
CREATE DATABASE IF NOT EXISTS bd_user_clinica_2025;
CREATE DATABASE IF NOT EXISTS bd_clinica_2025;

-- Mismo usuario que ya usas en tu .env local (MYSQL1_USER / MYSQL2_USER)
CREATE USER IF NOT EXISTS 'oscar'@'%' IDENTIFIED BY 'oscar';
GRANT ALL PRIVILEGES ON bd_user_clinica_2025.* TO 'oscar'@'%';
GRANT ALL PRIVILEGES ON bd_clinica_2025.* TO 'oscar'@'%';
FLUSH PRIVILEGES;
