USE cine;
-- CREATE USER IF NOT EXISTS
CREATE USER IF NOT EXISTS 'admin_super_cine'@'%' IDENTIFIED BY 'cine123456';

-- Verifico el usuario creado--
SELECT User, Host FROM mysql.user;

-- GRANT ALL PRIVILEGES ON coderhouse_generico.* TO 'admin_super'@'%' se le asiganan todos los provilegios sobre la BD cine, incluyendo los cambios estructurales
GRANT ALL PRIVILEGES ON cine.* TO 'admin_super_cine'@'%';

FLUSH PRIVILEGES;
-- Borro el usuario
-- DROP USER IF EXISTS 'admin_super_cine'@'localhost';

-- Verifico los privigios del usuario creado--
SELECT User, Host, Select_priv, Insert_priv, Update_priv, Delete_priv, Create_priv, Drop_priv, Grant_priv
FROM mysql.user
where user = 'admin_super_cine';

USE cine;

-- CREACIÓN DE ROLES

DROP ROLE IF EXISTS 
role_select_vistas,
role_crud_pelicula,
role_all_select_all_table;

CREATE ROLE role_select_vistas;
CREATE ROLE role_crud_pelicula;
CREATE ROLE role_all_select_all_table;


SELECT user
FROM mysql.user;


-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_select_vistas
GRANT SELECT ON pelicula TO role_select_vistas;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_crud_pelicula
GRANT ALL PRIVILEGES ON pelicula TO role_crud_pelicula;
GRANT SELECT ON cine.* TO role_all_select_all_table;


-- CREACIÓN DE USUARIOS Y ASIGNACIÓN A ROLES
CREATE USER 'usuario_select'@'%' IDENTIFIED BY 'cine_select_123456';
GRANT role_select_vistas TO 'usuario_select'@'%';

CREATE USER 'usuario_crud_pelicula'@'%' IDENTIFIED BY 'cine_crud_pelicula';
GRANT role_crud_pelicula TO 'usuario_crud_pelicula'@'%';

FLUSH PRIVILEGES;
