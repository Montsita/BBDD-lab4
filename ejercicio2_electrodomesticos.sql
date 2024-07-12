DROP DATABASE IF EXISTS funcionesBBDD_tienda_electrodomesticos;
CREATE DATABASE funcionesBBDD_tienda_electrodomesticos;
USE funcionesBBDD_tienda_electrodomesticos;

create table Trabajadores (
	id_trabajador INT primary key,
	nombre VARCHAR(255),
	puesto VARCHAR (150),
	salario DECIMAL (10, 2),
	turno VARCHAR (100),
	id_pedido INT	
);

CREATE TABLE Tipo_electrodomestico (
    id_tipo_electrodomestico INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(60),
    correo_electronico VARCHAR(150)
);

-- CARDINALIDAD MANY TO ONE - Un cliente puede tener muchas facturas y una factura solo sera de un cliente
CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- CARDINALIDAD MANY TO MANY - una factura puede tener diferentes tipos de electrodomesticos, y diferentes tipos de electrodomesticos pueden estar en una factura
create table factura_electrodomesticos(
	id_tipo_electrodomestico INT,
	id_factura INT auto_increment,
	primary key (id_tipo_electrodomestico, id_factura),
	foreign key (id_tipo_electrodomestico) references Tipo_electrodomestico (id_tipo_electrodomestico),
	foreign key (id_factura) references Facturas (id_factura)
);


-- CARDINALIDAD MANY TO ONE - un cliente puede realizar mas de un pedido pero cada pedido solo pertenece a un cliente
-- CARDINALIDAD MANY TO ONE - el trabajador puede atender a diferentes pedidos pero cada pedido es atendido por un trabajador
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_factura INT,
    id_trabajador INT,
    fecha DATE,
    estado VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_trabajador) REFERENCES Trabajadores(id_trabajador) 
);


