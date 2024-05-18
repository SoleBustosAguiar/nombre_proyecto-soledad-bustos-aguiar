use cine;
/*VISTA NRO1*/
CREATE VIEW vista_programacion_cine AS
SELECT 
    p.id_programacion,
    p.fecha_fin,
    p.fecha_hora_creada,
    p.fecha_inicio,
    p.id_cine,
    c.direccion,
    c.fecha_inauguracion,
    c.nombre AS nombre_cine,
    c.precio_entrada
FROM 
    programacion p
JOIN 
    cine c ON p.id_cine = c.id_cine;
    
    
    SELECT * FROM vista_programacion_cine;
    
      
/*VISTA NRO2*/    
CREATE VIEW vista_pelicula_informacion AS
SELECT 
    p.id_pelicula,
    p.anio_estreno,
    p.disponible,
    p.duracion,
    p.fecha_ingreso,
    p.nombre AS nombre_pelicula,
    p.titulo_original,
    c.nombre AS calificacion,
    po.nombre AS pais_de_origen,
    g.nombre AS genero
FROM 
    pelicula p
JOIN 
    calificacion c ON p.id_calificacion = c.id_calificacion
JOIN 
    paisdeorigen po ON p.id_pais_de_origen = po.id_pais_de_origen
JOIN 
    genero g ON p.id_genero = g.id_genero;    
    

SELECT * FROM vista_pelicula_informacion;    

/*VISTA NRO3*/    
CREATE VIEW vista_peliculas_x_funciones AS
SELECT 
    f.numero,
    f.dia_semana,
    f.duracion AS duracion_funcion,
    f.hora_inicio,
    f.id_programacion,
    f.id_pelicula,
    f.id_sala,
    pel.anio_estreno,
    pel.disponible,
    pel.nombre AS nombre_pelicula,
    pel.titulo_original
FROM 
    funcion f
JOIN 
    pelicula pel ON f.id_pelicula = pel.id_pelicula;

select * from vista_peliculas_x_funciones;

/*VISTA NRO4*/    
CREATE VIEW vista_disponibilidad_salas_x_cines AS
SELECT 
    c.id_cine,
    c.direccion,
    c.fecha_inauguracion,
    c.nombre AS nombre_cine,
    c.precio_entrada,
    s.id_sala,
    s.capacidad,
    s.numero AS numero_sala
FROM 
    cine c
JOIN 
    sala s ON c.id_cine = s.id_cine;

select * from vista_disponibilidad_salas_x_cines;


/*VISTA NRO5 vista de peliculas en ingles*/
CREATE VIEW vista_pelicula_ingles AS
SELECT 
    p.id_pelicula,
    p.anio_estreno,
    p.disponible,
    p.duracion,
    p.fecha_ingreso,
    p.nombre AS nombre_pelicula,
    p.titulo_original,
    p.id_calificacion,
    p.id_pais_de_origen,
    p.id_genero
FROM 
    pelicula p
JOIN 
    paisdeorigen po ON p.id_pais_de_origen = po.id_pais_de_origen
WHERE 
    po.idioma = 'inglés';
   
select * from vista_pelicula_ingles;

