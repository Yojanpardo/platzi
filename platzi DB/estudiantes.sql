CREATE DATABASE universidad;

CREATE TABLE estudiantes(
	estudiante_id INTEGER PRIMARY KEY NOT NULL,
	nombre_1 VARCHAR(15) NOT NULL,
	nombre_2 VARCHAR(20) DEFAULT '---',
	apellido_1 VARCHAR(20) NOT NULL,
	apellido_2 VARCHAR(20) DEFAULT '---',
	monitor INTEGER REFERENCES estudiantes(estudiante_id)
);
CREATE TABLE areas(
	id_area SERIAL PRIMARY KEY,
	nucleo_nombre VARCHAR (40)
);

CREATE TABLE nucleos(
	nucleo_id VARCHAR(14) PRIMARY KEY NOT NULL,
	nombre VARCHAR(40) NOT NULL,
	area_id INTEGER REFERENCES areas(id_area)
);

CREATE TABLE estudiantes_nucleos(
	estudiante_id INTEGER REFERENCES estudiantes(estudiante_id),
	nucleo_id VARCHAR (14)REFERENCES nucleos(nucleo_id),
	PRIMARY KEY (estudiante_id,nucleo_id)
);
INSERT INTO estudiantes VALUES(161214234,'felipe','' ,'santana','');
INSERT INTO areas VALUES( 1,'CIENCIAS BASICAS');
INSERT INTO nucleos VALUES(620415325,'BASES DE DATOS',1);

SELECT * FROM estudiantes_nucleos;