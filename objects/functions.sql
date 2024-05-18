use cine;
/* FUNCIONES 01  ingresar el idpelicula y devuelve el nombre de la pelicula*/
delimiter //
CREATE FUNCTION buscar_nombrepelicula (idpelicula int)
RETURNS CHARACTER (100)
deterministic
begin	
    declare nombre_pelicula varchar(100);
    select nombre into nombre_pelicula 
    from pelicula 
    where id_pelicula = idpelicula;
    return nombre_pelicula;
end //
delimiter ;
select buscar_nombrepelicula (22);

/* FUNCIONES 02*/
/*listar la cantidad de peliculas con el genero ingresado*/
delimiter //
CREATE FUNCTION cantidadpelicula_x_genero (genero char(20))
RETURNS int
deterministic
begin
declare cantidad_genero int; 
	SELECT count(*) into cantidad_genero 
    FROM  pelicula p 
    JOIN  genero g 
		ON p.id_genero = g.id_genero
	WHERE g.nombre = genero;
return cantidad_genero;
end //
delimiter ;
select cantidadpelicula_x_genero ('Acción');