CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255),
    email VARCHAR(100),
    enabled INT,
    role VARCHAR(50)
);

DELETE FROM user WHERE username = 'admin';

INSERT INTO user (username, password, email, enabled, role) 
VALUES ('admin', '123', 'admin@veterinaria.cl', 1, 'ROLE_ADMIN');

INSERT INTO user (username, password, email, enabled, role) 
VALUES ('asistente', '123', 'asistente@veterinaria.cl', 1, 'ROLE_ASISTENTE');

INSERT INTO user (username, password, email, enabled, role) 
VALUES ('cliente', '123', 'cliente@veterinaria.cl', 1, 'ROLE_USER');


-- 2. Crear tabla e insertar Medicamentos

CREATE TABLE IF NOT EXISTS medication (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    cost DOUBLE
);

INSERT INTO medication (name, cost) VALUES ('Antiparasitario Interno', 15000.0);
INSERT INTO medication (name, cost) VALUES ('Antibiotico (Amoxicilina)', 22500.0);
INSERT INTO medication (name, cost) VALUES ('Antiflamatorio (Meloxicam)', 12000.0);
INSERT INTO medication (name, cost) VALUES ('Vacuna octuple', 25000.0);


-- 3. Crear tabla e insertar Servicios Care

CREATE TABLE IF NOT EXISTS care (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    cost DOUBLE
);

INSERT INTO care (name, cost) VALUES ('Consulta General', 30000.0);
INSERT INTO care (name, cost) VALUES ('Consulta Especialidad', 45000.0);
INSERT INTO care (name, cost) VALUES ('Ecografía Abdominal', 40000.0);
INSERT INTO care (name, cost) VALUES ('Limpieza Dental', 35000.0);