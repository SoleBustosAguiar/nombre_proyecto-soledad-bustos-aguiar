use cine;

/* TG 01*/
/*Drop trigger despues_ingresar_pelicula*/
/*PRIMER trigger de auditoria, primero crea la tabla y luego crea el trigger*/

DROP TRIGGER IF EXISTS despues_ingresar_pelicula;
CREATE TRIGGER despues_ingresar_pelicula
AFTER INSERT ON pelicula
FOR EACH ROW
INSERT INTO log_pelicula_audi (id_pelicula, 
		anio_estreno,
		disponible,
		duracion,
		fecha_ingreso, 
		nombre, 
		titulo_original, 
		id_calificacion,
		id_pais_de_origen, 
		id_genero,   
		mensaje_auditoria) 
VALUES ( 
	    NEW.id_pelicula, 
		NEW.anio_estreno,
		NEW.disponible,
		NEW.duracion,
		NEW.fecha_ingreso, 
		NEW.nombre, 
		NEW.titulo_original, 
		NEW.id_calificacion,
		NEW.id_pais_de_origen, 
		NEW.id_genero,   
        concat('La pelicula ', NEW.nombre,' se ha agregado correctamente'));
    
	
	/* Inserto una película para probar el Trigger 1 y 2*/
INSERT INTO cine.pelicula
(id_pelicula,
anio_estreno,
disponible,
duracion,
fecha_ingreso,
nombre,
titulo_original,
id_calificacion,
id_pais_de_origen,
id_genero)
VALUES
(50,
2024,
1,
110,
'2024-05-02',
'fun ku panada 4',
'kun fu panda 4',
1,
40,
13);
SELECT *
FROM    log_pelicula_audi; 

    
    
    
    
/*SEGUNDO TRIGGER*/	
CREATE TRIGGER nombre_enmayuscula_pelicula
BEFORE INSERT ON pelicula
FOR EACH ROW
SET NEW.nombre = UPPER(NEW.nombre);

