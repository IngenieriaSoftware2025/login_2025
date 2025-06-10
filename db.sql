CREATE TABLE usuario_login2025 (
    usu_id SERIAL PRIMARY KEY,
    usu_nombre VARCHAR(50),
    usu_codigo INTEGER,
    usu_password VARCHAR(150),
    usu_situacion SMALLINT DEFAULT 1
);

CREATE TABLE rol_login2025 (
    rol_id SERIAL PRIMARY KEY,
    rol_nombre VARCHAR(75),
    rol_nombre_ct VARCHAR(25),
    rol_situacion SMALLINT DEFAULT 1
);

CREATE TABLE permiso_login2025 (
    permiso_id SERIAL PRIMARY KEY,
    permiso_usuario INTEGER,
    permiso_rol INTEGER,
    permiso_situacion SMALLINT DEFAULT 1,
    FOREIGN KEY (permiso_usuario) REFERENCES usuario_login2025 (usu_id),
    FOREIGN KEY (permiso_rol) REFERENCES rol_login2025 (rol_id)
);

-- INSERT USUARIOS
INSERT INTO usuario (usu_nombre,usu_codigo, usu_password) VALUES 
('CARLOS VASQUEZ', 12345678, '$2y$10$Nz6/ESQw7b7xW1Q2j.WEM.g5LQ/NSSmHnhZpfolFAH.ltD0GGRKGS'),
('CRISTIAN PEREZ', 12345679, '$2y$10$Nz6/ESQw7b7xW1Q2j.WEM.g5LQ/NSSmHnhZpfolFAH.ltD0GGRKGS'),
('DANILO ORDONEZ', 12345670, '$2y$10$Nz6/ESQw7b7xW1Q2j.WEM.g5LQ/NSSmHnhZpfolFAH.ltD0GGRKGS');

-- ROLES
INSERT INTO rol_login2025 (rol_nombre, rol_nombre_ct) VALUES 
('ADMINISTRADOR', 'ADMIN')
('USUARIO', 'USER');

--PERMISOS


INSERT INTO permiso_login2025 (permiso_usuario,permiso_rol) VALUES 
(1,1), (2,2), (3,1); 