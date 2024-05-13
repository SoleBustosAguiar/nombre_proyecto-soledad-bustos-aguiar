DROP DATABASE IF EXISTS cine ;

CREATE DATABASE cine DEFAULT CHARACTER SET utf8 ; 
USE cine;

CREATE TABLE actor (
  id_actor INT NOT NULL,
  animado TINYINT(1) NULL,
  apellido VARCHAR(200) NULL,
  nombre VARCHAR(200) NULL,
  CONSTRAINT PK_ACTOR PRIMARY KEY (id_actor)
);

CREATE TABLE calificacion (
  id_calificacion INT NOT NULL,
  nombre VARCHAR(200) NULL,
  CONSTRAINT PK_CALIFICACION PRIMARY KEY (id_calificacion)
);

CREATE TABLE cine (
  id_cine INT NOT NULL,
  direccion VARCHAR(200) NULL,
  fecha_inauguracion DATETIME NULL,
  nombre VARCHAR(200) NULL,
  precio_entrada DOUBLE NULL,
  CONSTRAINT PK_CINE PRIMARY KEY (id_cine)
);

CREATE TABLE entrada (
  id_entrada INT NOT NULL,
  fecha_hora_funcion DATETIME NULL,
  fecha_hora_venta DATETIME NULL,
  precio_cobrado FLOAT NULL,
  ticket_nro INT NULL,
  numero INT NOT NULL,
  CONSTRAINT PK_ENTRADA PRIMARY KEY (id_entrada)
);

CREATE TABLE funcion (
  numero INT(11) NOT NULL,
  dia_semana VARCHAR(45) NULL DEFAULT NULL,
  duracion VARCHAR(45) NULL DEFAULT NULL,
  hora_inicio VARCHAR(45) NULL DEFAULT NULL,
  id_programacion INT(11) NOT NULL,
  id_pelicula INT(11) NOT NULL,
  id_sala INT(11) NOT NULL,
  CONSTRAINT PK_FUNCION PRIMARY KEY (numero)
);

CREATE TABLE genero (
  id_genero INT(11) NOT NULL,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  CONSTRAINT PK_GENERO PRIMARY KEY (id_genero)
);

CREATE TABLE horariofuncion (
  id_horario_funcion INT(11) NOT NULL,
  duracion_intervalo INT(11) NULL DEFAULT NULL,
  duracion_publicidad INT(11) NULL DEFAULT NULL,
  es_trasnoche TINYINT(1) NULL DEFAULT NULL,
  hora_primera_funcion DATETIME NULL DEFAULT NULL,
  hora_ultima_funcion DATETIME NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT PK_HORARIOFUNCION    PRIMARY KEY (id_horario_funcion)
);

CREATE TABLE paisdeorigen (
  id_pais_de_origen INT NOT NULL,
  idioma VARCHAR(45) NULL,
  nombre VARCHAR(45) NULL,
  CONSTRAINT PK_PAISDEORIGEN PRIMARY KEY (id_pais_de_origen)
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
  CONSTRAINT PK_PELICULA PRIMARY KEY (id_pelicula)
);

CREATE TABLE personaje (
  id_personaje INT NOT NULL,
  nombreEnPelicula VARCHAR(40) NOT NULL,
  id_actor INT NOT NULL,
  CONSTRAINT PK_PERSONAJE PRIMARY KEY (id_personaje)
);

CREATE TABLE programacion (
  id_programacion INT(11) NOT NULL,
  fecha_fin DATETIME NULL DEFAULT NULL,
  fecha_hora_creada DATETIME NULL DEFAULT NULL,
  fecha_inicio DATETIME NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT PK_PROGRAMACION PRIMARY KEY (id_programacion)
);

CREATE TABLE reparto (
  id_personaje INT(11) NOT NULL,
  id_pelicula INT(11) NOT NULL,
  CONSTRAINT PK_REPARTO PRIMARY KEY (id_personaje, id_pelicula)
);

CREATE TABLE rol (
  id_rol INT NOT NULL,
  nombre VARCHAR(100) NULL,
  id_personaje INT NOT NULL,
  CONSTRAINT PK_ROL PRIMARY KEY (id_rol)
);

CREATE TABLE sala (
  id_sala INT(11) NOT NULL,
  capacidad INT(11) NULL DEFAULT NULL,
  numero INT(11) NULL DEFAULT NULL,
  id_cine INT(11) NOT NULL,
  CONSTRAINT PK_SALA PRIMARY KEY (id_sala)
);

CREATE TABLE sexo (
  id_sexo INT(11) NOT NULL,
  nombre VARCHAR(100) NULL DEFAULT NULL,
  id_actor INT(11) NOT NULL,
  CONSTRAINT PK_SEXO PRIMARY KEY (id_sexo)
);

-- Foreign Keys
-- Tabla: SEXO
    ALTER TABLE Sexo
	ADD CONSTRAINT FK_Sexo_Actor
    FOREIGN KEY (id_actor) REFERENCES Actor (id_actor);
    
-- Tabla:Personaje
   ALTER TABLE Personaje 
   ADD CONSTRAINT FK_Personaje_Actor
   FOREIGN KEY (id_actor) REFERENCES Actor (id_actor);

-- Tabla:Rol
   ALTER TABLE Rol
   ADD CONSTRAINT FK_Rol_Personaje
   FOREIGN KEY (id_personaje) REFERENCES Personaje (id_personaje);

-- Tabla:Entrada
   ALTER TABLE Entrada 
   ADD CONSTRAINT FK_Entrada_Funcion
   FOREIGN KEY (numero) REFERENCES Funcion (numero);    

-- Tabla:Sala
   ALTER TABLE Sala
   ADD CONSTRAINT FK_Sala_Cine
   FOREIGN KEY (id_cine) REFERENCES Cine (id_cine);
   
-- Tabla:Programacion 
   ALTER TABLE Programacion
   ADD CONSTRAINT FK_Programacion_Cine
   FOREIGN KEY (id_cine) REFERENCES Cine (id_cine);
   
-- Tabla:HorarioFuncion 
   ALTER TABLE HorarioFuncion 
   ADD CONSTRAINT FK_HorarioFuncion_Cine
   FOREIGN KEY (id_cine) REFERENCES Cine (id_cine);

-- Tabla:Funcion 
   ALTER TABLE Funcion 
   ADD CONSTRAINT FK_Funcion_Pelicula
   FOREIGN KEY (id_pelicula) REFERENCES Pelicula (id_pelicula);
   ALTER TABLE Funcion 
   ADD CONSTRAINT FK_Funcion_Programacion
   FOREIGN KEY (id_programacion) REFERENCES Programacion (id_programacion);
   ALTER TABLE Funcion
   ADD CONSTRAINT FK_Funcion_Sala
   FOREIGN KEY (id_sala) REFERENCES Sala (id_sala);
   
  -- Tabla:Pelicula
   ALTER TABLE Pelicula
   ADD CONSTRAINT FK_Pelicula_Calificacion
   FOREIGN KEY (id_calificacion) REFERENCES Calificacion (id_calificacion);
   ALTER TABLE Pelicula 
   ADD CONSTRAINT FK_Pelicula_PaisDeOrigen
   FOREIGN KEY (id_pais_de_origen) REFERENCES PaisDeOrigen (id_pais_de_origen);
   ALTER TABLE Pelicula
   ADD CONSTRAINT FK_Pelicula_Genero
   FOREIGN KEY (id_genero) REFERENCES Genero (id_genero);
   
   -- Tabla:Reparto
    ALTER TABLE Reparto
    ADD CONSTRAINT FK_Personaje_has_Pelicula_Personaje
    FOREIGN KEY (id_personaje) REFERENCES Personaje (id_personaje);
    ALTER TABLE Reparto
    ADD CONSTRAINT FK_Personaje_has_Pelicula_Pelicula
    FOREIGN KEY (id_pelicula) REFERENCES Pelicula (id_pelicula);


ALTER TABLE Pelicula ADD INDEX (titulo_original);

ALTER TABLE Personaje ADD INDEX (id_personaje);
