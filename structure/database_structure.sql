DROP DATABASE IF EXISTS cine ;
CREATE DATABASE cine DEFAULT CHARACTER SET utf8 ; 
USE cine;
CREATE TABLE actor (
  id_actor INT NOT NULL,
  animado TINYINT(1) NULL,
  apellido VARCHAR(200) NULL,
  nombre VARCHAR(200) NULL,
  CONSTRAINT pk_actor PRIMARY KEY (id_actor)
);

CREATE TABLE calificacion (
  id_calificacion INT NOT NULL,
  nombre VARCHAR(200) NULL,
  CONSTRAINT pk_calificacion PRIMARY KEY (id_calificacion)
);

CREATE TABLE cine (
  id_cine INT NOT NULL,
  direccion VARCHAR(200) NULL,
  fecha_inauguracion DATETIME NULL,
  nombre VARCHAR(200) NULL,
  precio_entrada DOUBLE NULL,
  CONSTRAINT pk_cine PRIMARY KEY (id_cine)
);

CREATE TABLE entrada (
  id_entrada INT NOT NULL,
  fecha_hora_funcion DATETIME NULL,
  fecha_hora_venta DATETIME NULL,
  precio_cobrado FLOAT NULL,
  ticket_nro INT NULL,
  numero INT NOT NULL,
  CONSTRAINT pk_entrada PRIMARY KEY (id_entrada)
);

CREATE TABLE funcion (
  numero INT(11) NOT NULL,
  dia_semana VARCHAR(45) NULL DEFAULT NULL,
  duracion VARCHAR(45) NULL DEFAULT NULL,
  hora_inicio VARCHAR(45) NULL DEFAULT NULL,
  id_programacion INT(11) NOT NULL,
  id_pelicula INT(11) NOT NULL,
  id_sala INT(11) NOT NULL,
  CONSTRAINT pk_funcion PRIMARY KEY (numero)
);

CREATE TABLE genero (
  id_genero INT(11) NOT NULL,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  CONSTRAINT pk_genero PRIMARY KEY (id_genero)
);

CREATE TABLE horariofuncion (
  id_horario_funcion INT(11) NOT NULL,
  duracion_intervalo INT(11) NULL DEFAULT NULL,
  duracion_publicidad INT(11) NULL DEFAULT NULL,
  es_trasnoche TINYINT(1) NULL DEFAULT NULL,
  hora_primera_funcion DATETIME NULL DEFAULT NULL,
  hora_ultima_funcion DATETIME NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT pk_horariofuncion    PRIMARY KEY (id_horario_funcion)
);

CREATE TABLE paisdeorigen (
  id_pais_de_origen INT NOT NULL,
  idioma VARCHAR(45) NULL,
  nombre VARCHAR(45) NULL,
  CONSTRAINT pk_paisdeorigen PRIMARY KEY (id_pais_de_origen)
);

CREATE TABLE pelicula (
  id_pelicula INT NOT NULL,
  anio_estreno INT NULL,
  disponible TINYINT(1) NOT NULL,
  duracion INT NOT NULL,
  fecha_ingreso DATE NULL,
  nombre VARCHAR(100) NOT NULL,
  titulo_original VARCHAR(100) NULL,
  id_calificacion INT NOT NULL,
  id_pais_de_origen INT NOT NULL,
  id_genero INT NOT NULL,
  CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula)
);

CREATE TABLE personaje (
  id_personaje INT NOT NULL,
  nombreEnPelicula VARCHAR(40) NOT NULL,
  id_actor INT NOT NULL,
  CONSTRAINT pk_personaje PRIMARY KEY (id_personaje)
);

CREATE TABLE programacion (
  id_programacion INT(11) NOT NULL,
  fecha_fin DATETIME NULL DEFAULT NULL,
  fecha_hora_creada DATETIME NULL DEFAULT NULL,
  fecha_inicio DATETIME NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT pk_programacion PRIMARY KEY (id_programacion)
);

CREATE TABLE reparto (
  id_personaje INT(11) NOT NULL,
  id_pelicula INT(11) NOT NULL,
  CONSTRAINT pk_reparto PRIMARY KEY (id_personaje, id_pelicula)
);

CREATE TABLE rol (
  id_rol INT NOT NULL,
  nombre VARCHAR(100) NULL,
  id_personaje INT NOT NULL,
  CONSTRAINT pk_rol PRIMARY KEY (id_rol)
);

CREATE TABLE sala (
  id_sala INT(11) NOT NULL,
  capacidad INT(11) NULL DEFAULT NULL,
  numero INT(11) NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT pk_sala PRIMARY KEY (id_sala)
);

CREATE TABLE sexo (
  id_sexo INT(11) NOT NULL,
  nombre VARCHAR(100) NULL DEFAULT NULL,
  id_actor INT(11) NOT NULL,
  CONSTRAINT pk_sexo PRIMARY KEY (id_sexo)
);

-- Foreign Keys
-- Tabla: sexo
    ALTER TABLE sexo
	ADD CONSTRAINT fk_sexo_actor
    FOREIGN KEY (id_actor) REFERENCES actor (id_actor);
    
-- Tabla:personaje
   ALTER TABLE personaje 
   ADD CONSTRAINT fk_personaje_actor
   FOREIGN KEY (id_actor) REFERENCES actor (id_actor);

-- Tabla:rol
   ALTER TABLE rol
   ADD CONSTRAINT fk_rol_personaje
   FOREIGN KEY (id_personaje) REFERENCES personaje (id_personaje);

-- Tabla:entrada
   ALTER TABLE entrada 
   ADD CONSTRAINT fk_entrada_funcion
   FOREIGN KEY (numero) REFERENCES funcion (numero);    

-- Tabla:sala
   ALTER TABLE sala
   ADD CONSTRAINT fk_sala_cine
   FOREIGN KEY (id_cine) REFERENCES cine (id_cine);
   
-- Tabla:programacion 
   ALTER TABLE programacion
   ADD CONSTRAINT fk_programacion_cine
   FOREIGN KEY (id_cine) REFERENCES cine (id_cine);
   
-- Tabla:horariofuncion 
   ALTER TABLE horariofuncion 
   ADD CONSTRAINT fk_horariofuncion_cine
   FOREIGN KEY (id_cine) REFERENCES cine (id_cine);

-- Tabla:funcion 
   ALTER TABLE funcion 
   ADD CONSTRAINT fk_funcion_pelicula
   FOREIGN KEY (id_pelicula) REFERENCES pelicula (id_pelicula);
   ALTER TABLE funcion 
   ADD CONSTRAINT fk_funcion_programacion
   FOREIGN KEY (id_programacion) REFERENCES programacion (id_programacion);
   ALTER TABLE funcion
   ADD CONSTRAINT fk_funcion_sala
   FOREIGN KEY (id_sala) REFERENCES sala (id_sala);
   
  -- Tabla:pelicula
   ALTER TABLE pelicula
   ADD CONSTRAINT fk_pelicula_calificacion
   FOREIGN KEY (id_calificacion) REFERENCES calificacion (id_calificacion);
   ALTER TABLE pelicula 
   ADD CONSTRAINT fk_pelicula_paisdeorigen
   FOREIGN KEY (id_pais_de_origen) REFERENCES paisdeorigen (id_pais_de_origen);
   ALTER TABLE pelicula
   ADD CONSTRAINT fk_pelicula_genero
   FOREIGN KEY (id_genero) REFERENCES genero (id_genero);
   
   -- Tabla:reparto
    ALTER TABLE reparto
    ADD CONSTRAINT fk_personaje_has_pelicula_personaje
    FOREIGN KEY (id_personaje) REFERENCES personaje (id_personaje);
    ALTER TABLE reparto
    ADD CONSTRAINT fk_personaje_has_pelicula_pelicula
    FOREIGN KEY (id_pelicula) REFERENCES pelicula (id_pelicula);
    

ALTER TABLE pelicula ADD INDEX (titulo_original);

ALTER TABLE personaje ADD INDEX (id_personaje);   
