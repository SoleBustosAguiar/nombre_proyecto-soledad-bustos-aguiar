use cine;
/* SP 01*/
/*crear un sp para poner en mayusculas todos los nombres de las peliculas*/
delimiter //
CREATE PROCEDURE poner_mayusculas_nombrepeliculas()
begin
    UPDATE pelicula
    SET nombre = UPPER(nombre)
    WHERE id_pelicula > 0;
end //
delimiter ;

call poner_mayusculas_nombrepeliculas();
select * from pelicula;

/* SP 02 crear un sp que chequee si existe una tabla peliculas auditoria que la dropee y la vuelva a crear*/

/*DROP TABLE IF EXISTS log_pelicula_audi;*/
delimiter //
CREATE PROCEDURE crear_estructura_auditoria_peliculas()
begin
    CREATE TABLE log_pelicula_audi (
		id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
        id_pelicula int NOT NULL,
        anio_estreno int DEFAULT NULL,
        disponible tinyint NOT NULL,
        duracion int NOT NULL,
        fecha_ingreso date DEFAULT NULL,
        nombre varchar(100) NOT NULL,
        titulo_original varchar(100) DEFAULT NULL,
        id_calificacion int NOT NULL,
        id_pais_de_origen int NOT NULL,
        id_genero int NOT NULL,
        mensaje_auditoria varchar(100) DEFAULT NULL
        );
end //
delimiter ;
call crear_estructura_auditoria_peliculas();
select * from log_pelicula_audi;