USE cine;

SET GLOBAL local_infile = true;

LOAD DATA  LOCAL INFILE '/structure/data-csv/calificacion.csv'
INTO TABLE Calificacion
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA  LOCAL INFILE '/structure/data-csv/genero.csv'
INTO TABLE Genero
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA  LOCAL INFILE '/structure/data-csv/paisdeorigen.csv'
INTO TABLE PaisDeOrigen
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA  LOCAL INFILE '/structure/data-csv/pelicula.csv'
INTO TABLE Pelicula
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


/*Insertar registros tabla ACTOR*/
INSERT INTO Actor (id_actor, animado, apellido, nombre)
VALUES
(1, 0, 'Smith', 'John'),
(2, 0, 'Johnson', 'Emma'),
(3, 1, 'Mouse', 'Mickey'),
(4, 1, 'Duck', 'Donald'),
(5, 0, 'Gonzalez', 'María'),
(6, 0, 'Lee', 'David'),
(7, 1, 'Bunny', 'Bugs'),
(8, 0, 'Rodriguez', 'Carlos'),
(9, 0, 'Wong', 'Jennifer'),
(10, 1, 'Simpson', 'Homer'),
(11, 0, 'Chen', 'Lily'),
(12, 0, 'Patel', 'Raj'),
(13, 1, 'Griffin', 'Peter'),
(14, 0, 'Brown', 'Sarah'),
(15, 0, 'Martinez', 'Ana'),
(16, 1, 'Flintstone', 'Fred'),
(17, 1, 'Jetson', 'George'),
(18, 0, 'Nguyen', 'Tran'),
(19, 0, 'Garcia', 'Luis'),
(20, 1, 'Pikachu', 'Ash'),
(21, 0, 'Taylor', 'Emily'),
(22, 0, 'Kim', 'James'),
(23, 1, 'Spongebob', 'Squarepants'),
(24, 1, 'Scooby', 'Doo'),
(25, 0, 'Lopez', 'Juan'),
(26, 0, 'Hernandez', 'Jessica'),
(27, 1, 'Bart', 'Simpson'),
(28, 0, 'Wilson', 'Michael'),
(29, 0, 'Chang', 'Sophia'),
(30, 1, 'Goku', 'Son'),
(31, 0, 'Walker', 'Lauren'),
(32, 0, 'Ali', 'Mohammed'),
(33, 1, 'Tom', 'Jerry'),
(34, 0, 'Adams', 'Elizabeth'),
(35, 0, 'Gomez', 'Daniel'),
(36, 1, 'Minnie', 'Mouse'),
(37, 1, 'Goofy', 'Goof'),
(38, 0, 'Carter', 'Olivia'),
(39, 0, 'Li', 'Kevin'),
(40, 1, 'Popeye', NULL),
(41, 0, 'Torres', 'Isabella'),
(42, 0, 'Singh', 'Amit'),
(43, 1, 'Simba', NULL),
(44, 1, 'Aladdin', NULL),
(45, 0, 'Smith', 'Sophie'),
(46, 0, 'Khan', 'Ali'),
(47, 1, 'Elsa', NULL),
(48, 0, 'White', 'Emily'),
(49, 0, 'Lam', 'Andy'),
(50, 1, 'Buzz', 'Lightyear'),
(51, 0, 'Martinez', 'David'),
(52, 0, 'Yang', 'Grace'),
(53, 1, 'Snoopy', NULL),
(54, 0, 'Gonzalez', 'Alex'),
(55, 0, 'Li', 'Grace'),
(56, 1, 'Daffy', 'Duck'),
(57, 0, 'Thompson', 'Sophia'),
(58, 0, 'Cheng', 'Jack'),
(59, 1, 'Shrek', NULL),
(60, 0, 'Huang', 'Tiffany'),
(61, 0, 'Young', 'Chris'),
(62, 1, 'Road', 'Runner'),
(63, 1, 'Jerry', 'Mouse'),
(64, 0, 'Kim', 'Hannah'),
(65, 0, 'Wong', 'Justin'),
(66, 1, 'Tweety', NULL),
(67, 0, 'Wilson', 'Sophie'),
(68, 0, 'Chan', 'Tony'),
(69, 1, 'Stitch', NULL),
(70, 0, 'Hernandez', 'Eva'),
(71, 0, 'Smith', 'Nathan'),
(72, 1, 'Winnie', 'the Pooh'),
(73, 1, 'Mickey', 'Mouse'),
(74, 0, 'Tran', 'Michelle'),
(75, 0, 'Le', 'Derek'),
(76, 1, 'Mickey', 'Mouse'),
(77, 0, 'Nguyen', 'Sophia'),
(78, 0, 'Wang', 'Bella'),
(79, 1, 'Patrick', 'Star'),
(80, 0, 'Miller', 'Joshua'),
(81, 0, 'Zhang', 'Emily'),
(82, 1, 'Bambi', NULL),
(83, 1, 'Pumbaa', NULL),
(84, 0, 'Garcia', 'Sophia'),
(85, 0, 'Brown', 'Andrew'),
(86, 1, 'Dumbo', NULL),
(87, 1, 'Yogi', 'Bear'),
(88, 0, 'Li', 'Jason'),
(89, 0, 'Gonzalez', 'Natalie'),
(90, 1, 'Porky', 'Pig'),
(91, 0, 'Smith', 'Olivia'),
(92, 0, 'Nguyen', 'Ethan'),
(93, 1, 'Sylvester', 'Cat'),
(94, 1, 'Felix', 'the Cat'),
(95, 0, 'Kim', 'Grace'),
(96, 0, 'Chen', 'Austin'),
(97, 1, 'Pikachu', NULL),
(98, 0, 'Wu', 'Ella'),
(99, 0, 'Chavez', 'Angel'),
(100, 1, 'Garfield', NULL);

/*Insertar registros tabla CINE*/
INSERT INTO Cine (id_cine, direccion, fecha_inauguracion, nombre, precio_entrada)
VALUES
(1, 'Rivadavia 123, Peatonal Sur', '2022-01-15 10:00:00', 'Cine PEATONAL', 1500.00),
(2, 'Avenida Belgrano, Shopping Terminal', '2021-08-20 09:30:00', 'Cine TERMINAL', 2000.00),
(3, 'Prado 456, Shopping Solar', '2020-05-10 11:00:00', 'Cine SOLAR', 1500.00),
(4, 'Avenida Alem, Shopping UP', '2019-11-03 12:00:00', 'Cine UP', 1500.00),
(5, 'Perú 789, Galerias V', '2023-02-28 14:30:00', 'Cine V', 1500.00);


/*Insertar registros tabla SALA*/
INSERT INTO Sala (id_sala, capacidad, numero, id_cine)
VALUES
(1, 100, 1, 1),
(2, 80, 2, 1),
(3, 120, 1, 2),
(4, 90, 2, 2),
(5, 150, 1, 3),
(6, 70, 2, 3),
(7, 110, 1, 4),
(8, 85, 2, 4),
(9, 130, 1, 5),
(10, 95, 2, 5);

/*Insertar registros tabla SEXO*/
INSERT INTO Sexo (id_sexo, nombre, id_actor)
VALUES
(1, 'Masculino', 1),
(2, 'Femenino', 2),
(3, 'Masculino', 3),
(4, 'Masculino', 4),
(5, 'Femenino', 5),
(6, 'Masculino', 6),
(7, 'Masculino', 7),
(8, 'Masculino', 8),
(9, 'Femenino', 9),
(10, 'Masculino', 10),
(11, 'Femenino', 11),
(12, 'Masculino', 12),
(13, 'Masculino', 13),
(14, 'Femenino', 14),
(15, 'Femenino', 15),
(16, 'Masculino', 16),
(17, 'Masculino', 17),
(18, 'Femenino', 18),
(19, 'Masculino', 19),
(20, 'Masculino', 20),
(21, 'Femenino', 21),
(22, 'Masculino', 22),
(23, 'Masculino', 23),
(24, 'Femenino', 24),
(25, 'Masculino', 25),
(26, 'Femenino', 26),
(27, 'Masculino', 27),
(28, 'Femenino', 28),
(29, 'Masculino', 29),
(30, 'Femenino', 30),
(31, 'Masculino', 31),
(32, 'Masculino', 32),
(33, 'Femenino', 33),
(34, 'Masculino', 34),
(35, 'Femenino', 35),
(36, 'Masculino', 36),
(37, 'Masculino', 37),
(38, 'Femenino', 38),
(39, 'Femenino', 39),
(40, 'Masculino', 40),
(41, 'Femenino', 41),
(42, 'Masculino', 42),
(43, 'Masculino', 43),
(44, 'Masculino', 44),
(45, 'Femenino', 45),
(46, 'Masculino', 46),
(47, 'Femenino', 47),
(48, 'Masculino', 48),
(49, 'Femenino', 49),
(50, 'Masculino', 50),
(51, 'Masculino', 51),
(52, 'Femenino', 52),
(53, 'Masculino', 53),
(54, 'Femenino', 54),
(55, 'Masculino', 55),
(56, 'Femenino', 56),
(57, 'Masculino', 57),
(58, 'Femenino', 58),
(59, 'Masculino', 59),
(60, 'Femenino', 60),
(61, 'Masculino', 61),
(62, 'Masculino', 62),
(63, 'Femenino', 63),
(64, 'Masculino', 64),
(65, 'Femenino', 65),
(66, 'Masculino', 66),
(67, 'Masculino', 67),
(68, 'Femenino', 68),
(69, 'Masculino', 69),
(70, 'Masculino', 70),
(71, 'Femenino', 71),
(72, 'Masculino', 72),
(73, 'Femenino', 73),
(74, 'Masculino', 74),
(75, 'Masculino', 75),
(76, 'Femenino', 76),
(77, 'Masculino', 77),
(78, 'Femenino', 78),
(79, 'Masculino', 79),
(80, 'Masculino', 80),
(81, 'Femenino', 81),
(82, 'Masculino', 82),
(83, 'Femenino', 83),
(84, 'Masculino', 84),
(85, 'Femenino', 85),
(86, 'Masculino', 86),
(87, 'Femenino', 87),
(88, 'Masculino', 88),
(89, 'Masculino', 89),
(90, 'Femenino', 90),
(91, 'Masculino', 91),
(92, 'Femenino', 92),
(93, 'Masculino', 93),
(94, 'Femenino', 94),
(95, 'Masculino', 95),
(96, 'Femenino', 96),
(97, 'Masculino', 97),
(98, 'Femenino', 98),
(99, 'Masculino', 99),
(100, 'Femenino', 100);

/*Insertar registros tabla PERSONAJE*/
INSERT INTO Personaje (id_personaje, nombreEnPelicula, id_actor)
VALUES
(1, 'Mickey Mouse', 3),
(2, 'Donald Duck', 4),
(3, 'Bugs Bunny', 7),
(4, 'Homer Simpson', 10),
(5, 'Peter Griffin', 13),
(6, 'Fred Flintstone', 16),
(7, 'George Jetson', 17),
(8, 'Minnie Mouse', 36),
(9, 'Goofy', 37),
(10, 'Bart Simpson', 27),
(11, 'Tom', 33),
(12, 'Snoopy', 53),
(13, 'Daffy Duck', 56),
(14, 'Shrek', 59),
(15, 'Winnie the Pooh', 72),
(16, 'Mickey Mouse', 73),
(17, 'Stitch', 69),
(18, 'Patrick Star', 79),
(19, 'Bambi', 82),
(20, 'Dumbo', 86);


/*Insertar registros tabla horariofuncion*/
INSERT INTO HorarioFuncion (id_horario_funcion, duracion_intervalo, duracion_publicidad, es_trasnoche, hora_primera_funcion, hora_ultima_funcion, id_cine)
VALUES
(1, 15, 10, 0, '2022-01-15 10:30:00', '2022-01-15 23:30:00', 1),
(2, 20, 12, 0, '2022-01-15 10:15:00', '2022-01-15 23:00:00', 1),
(3, 15, 10, 0, '2022-01-15 10:00:00', '2022-01-15 22:45:00', 2),
(4, 20, 12, 0, '2022-01-15 10:10:00', '2022-01-15 22:50:00', 2),
(5, 15, 10, 0, '2022-01-15 11:00:00', '2022-01-15 23:45:00', 3),
(6, 20, 12, 0, '2022-01-15 11:30:00', '2022-01-15 23:30:00', 3),
(7, 15, 10, 0, '2022-01-15 10:45:00', '2022-01-15 23:15:00', 4),
(8, 20, 12, 0, '2022-01-15 10:20:00', '2022-01-15 23:00:00', 4),
(9, 15, 10, 0, '2022-01-15 11:15:00', '2022-01-15 23:45:00', 5),
(10, 20, 12, 0, '2022-01-15 10:30:00', '2022-01-15 23:30:00', 5),
(11, 15, 10, 0, '2022-01-15 10:45:00', '2022-01-15 23:15:00', 1),
(12, 20, 12, 0, '2022-01-15 10:15:00', '2022-01-15 23:00:00', 1),
(13, 15, 10, 0, '2022-01-15 11:00:00', '2022-01-15 22:45:00', 2),
(14, 20, 12, 0, '2022-01-15 10:30:00', '2022-01-15 23:00:00', 2),
(15, 15, 10, 0, '2022-01-15 10:45:00', '2022-01-15 23:15:00', 3),
(16, 20, 12, 0, '2022-01-15 11:30:00', '2022-01-15 23:30:00', 3),
(17, 15, 10, 0, '2022-01-15 10:30:00', '2022-01-15 23:00:00', 4),
(18, 20, 12, 0, '2022-01-15 10:45:00', '2022-01-15 23:15:00', 4),
(19, 15, 10, 0, '2022-01-15 11:15:00', '2022-01-15 23:45:00', 5),
(20, 20, 12, 0, '2022-01-15 10:20:00', '2022-01-15 23:00:00', 5);


/*Insertar registros tabla programacion*/
INSERT INTO Programacion (id_programacion, fecha_fin, fecha_hora_creada, fecha_inicio, id_cine)
VALUES
(1, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 1),
(2, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 2),
(3, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 3),
(4, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 4),
(5, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 5),
(6, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 1),
(7, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 2),
(8, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 3),
(9, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 4),
(10, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 5),
(11, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 1),
(12, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 2),
(13, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 3),
(14, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 4),
(15, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 5),
(16, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 1),
(17, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 2),
(18, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 3),
(19, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 4),
(20, '2022-02-28 23:59:59', '2022-02-01 10:00:00', '2022-02-01 00:00:00', 5);

/*Insertar registros tabla funcion*/
INSERT INTO Funcion (numero, dia_semana, duracion, hora_inicio, id_programacion, id_pelicula, id_sala)
VALUES
(1, 'Lunes', '2 horas', '14:00', 1, 1, 1),
(2, 'Martes', '2 horas', '15:00', 2, 22, 2),
(3, 'Miércoles', '2 horas', '16:00', 3, 23, 3),
(4, 'Jueves', '2 horas', '17:00', 4, 24, 4),
(5, 'Viernes', '2 horas', '18:00', 5, 25, 5),
(6, 'Sábado', '2 horas', '19:00', 1, 26, 1),
(7, 'Domingo', '2 horas', '20:00', 2, 27, 2),
(8, 'Lunes', '2 horas', '21:00', 3, 28, 3),
(9, 'Martes', '2 horas', '22:00', 4, 29, 4),
(10, 'Miércoles', '2 horas', '23:00', 3, 30, 5);


/*Insertar registros tabla REPARTO*/
INSERT INTO Reparto (id_personaje, id_pelicula)
VALUES
(1, 1),
(2, 2),
(3, 22),
(4, 23),
(5, 24),
(6, 25),
(7, 26),
(8, 27),
(9, 28),
(10, 29),
(11, 30),
(12, 31),
(13, 32),
(14, 33),
(15, 34),
(16, 35),
(17, 36),
(18, 37),
(19, 38);

/*Insertar registros tabla ROL*/
INSERT INTO Rol (id_rol, nombre, id_personaje)
VALUES
(1, 'Protagonista', 1),
(2, 'Protagonista', 2),
(3, 'Protagonista', 3),
(4, 'Protagonista', 4),
(5, 'Protagonista', 5),
(6, 'Protagonista', 6),
(7, 'Protagonista', 7),
(8, 'Secundario', 8),
(9, 'Secundario', 9),
(10, 'Secundario', 10),
(11, 'Secundario', 11),
(12, 'Secundario', 12),
(13, 'Secundario', 13),
(14, 'Secundario', 14),
(15, 'Secundario', 15),
(16, 'Secundario', 16),
(17, 'Secundario', 17),
(18, 'Secundario', 18),
(19, 'Secundario', 19),
(20, 'Secundario', 20);

/*Insertar registros tabla ENTRADA*/
INSERT INTO Entrada (id_entrada, fecha_hora_funcion, fecha_hora_venta, precio_cobrado, ticket_nro, numero)
VALUES
(1, '2024-04-11 14:00:00', NULL, NULL, NULL, 1),
(2, '2024-04-12 15:00:00', NULL, NULL, NULL, 2),
(3, '2024-04-13 16:00:00', NULL, NULL, NULL, 3),
(4, '2024-04-14 17:00:00', NULL, NULL, NULL, 4),
(5, '2024-04-15 18:00:00', NULL, NULL, NULL, 5),
(6, '2024-04-16 19:00:00', NULL, NULL, NULL, 6),
(7, '2024-04-17 20:00:00', NULL, NULL, NULL, 7),
(8, '2024-04-18 21:00:00', NULL, NULL, NULL, 8),
(9, '2024-04-19 22:00:00', NULL, NULL, NULL, 9),
(10, '2024-04-20 23:00:00', NULL, NULL, NULL, 10),
(11, '2024-04-11 14:00:00', NULL, NULL, NULL, 1),
(12, '2024-04-12 15:00:00', NULL, NULL, NULL, 2),
(13, '2024-04-13 16:00:00', NULL, NULL, NULL, 3),
(14, '2024-04-14 17:00:00', NULL, NULL, NULL, 4),
(15, '2024-04-15 18:00:00', NULL, NULL, NULL, 5),
(16, '2024-04-16 19:00:00', NULL, NULL, NULL, 6),
(17, '2024-04-17 20:00:00', NULL, NULL, NULL, 7),
(18, '2024-04-18 21:00:00', NULL, NULL, NULL, 8),
(19, '2024-04-19 22:00:00', NULL, NULL, NULL, 9),
(20, '2024-04-20 23:00:00', NULL, NULL, NULL, 10);