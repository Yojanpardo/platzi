CREATE TABLE telefonos(
	telefono VARCHAR (12) PRIMARY KEY NOT NULL 
);
INSERT INTO telefonos
	VALUES
	('3122537079'),
	('3204448902'),
	('8675571'),
	('3125321395'),
	('3214066371'); 
SELECT * FROM telefonos_clientes;
CREATE TABLE facturas(
	id SERIAL PRIMARY KEY NOT NULL, 
	fecha DATE NOT NULL,
	total INTEGER NOT NULL
);
INSERT INTO facturas 
VALUES
	(1,'01/09/2016',20000)
CREATE TABLE clientes(
	cedula VARCHAR (10) PRIMARY KEY, 
	primer_nombre VARCHAR (15) NOT NULL,
	segundo_nombre VARCHAR (20) DEFAULT '---',
	primer_apellido VARCHAR (20) NOT NULL,
	segundo_apellido VARCHAR (20) DEFAULT '---',
	direccion TEXT DEFAULT '---',
	email VARCHAR (30),
	factura_id INTEGER REFERENCES facturas(id) NOT NULL
);
INSERT INTO clientes 
	VALUES
	('1069757132','yojan','antonio','pardo','zabala','calle 25 #3-09','yojan.pardo@gmail.com',1);


CREATE TABLE telefonos_clientes(
	telefono VARCHAR (12) REFERENCES telefonos(telefono) NOT NULL,
	cilente_id VARCHAR (10) REFERENCES clientes(cedula) NOT NULL,
	PRIMARY KEY (telefono,cilente_id)
);
INSERT INTO telefonos_clientes VALUES
	('3204448902','1069757132');
CREATE TABLE productos(
	id SERIAL PRIMARY KEY NOT NULL,
	nombre VARCHAR (20) NOT NULL,
	iva INTEGER NOT NULL,
	unidad_medida VARCHAR (10) NOT NULL,
	precio INTEGER NOT NULL,
	inventario INTEGER NOT NULL
);

INSERT INTO productos
	VALUES
	(0005,'huevos',8,'ud.',300,500);
	
SELECT * FROM facturas;

CREATE TABLE facturas_productos(
	factura_id INTEGER REFERENCES facturas(id),
	producto_id INTEGER REFERENCES productos(id),
	cantidad INTEGER NOT NULL,
	subtotal INTEGER NOT NULL,
	PRIMARY KEY (factura_id,producto_id)
);


