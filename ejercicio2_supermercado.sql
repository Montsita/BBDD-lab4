DROP DATABASE IF EXISTS funcionesBBDD_supermercado;
CREATE DATABASE funcionesBBDD_supermercado;
USE funcionesBBDD_supermercado;


CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(60),
    correo_electronico VARCHAR(150)
);


CREATE TABLE Trabajadores (
    id_trabajador INT PRIMARY KEY,
    nombre VARCHAR(255),
    puesto VARCHAR(100),
    salario DECIMAL(10, 2),
    seccion INT
);


CREATE TABLE Seccion (
    id_seccion INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255)
);

-- CARDINALIDAD MANY TO MANY - los trabajadores pueden trabajar en mas de una seccion, y en cada seccion pueden haber mas de un trabajador
CREATE TABLE trabajadores_seccion (
id_trabajador INT,
id_seccion INT,
primary key (id_trabajador, id_seccion),
foreign key (id_trabajador) references Trabajadores (id_trabajador),
foreign key (id_seccion) references Seccion (id_seccion)
);


-- CARDINALIDAD MANY TO ONE - un cliente puede realizar mas de un pedido pero cada pedido solo pertenece a un cliente
-- CARDINALIDAD MANY TO ONE - el trabajador puede atender a diferentes pedidos pero cada pedido es atendido por un trabajador
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_trabajador INT,
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_trabajador) REFERENCES Trabajadores(id_trabajador)
);

-- CARDINALIDAD MANY TO ONE - un cliente puede tener mas de una factura, y una factura es para cada cliente
-- CARDINALIDAD MANY TO ONE - cada factura puede tener mas de un pedido pero cada pedido tiene una unica factura
CREATE TABLE Factura (
    id_factura INT PRIMARY KEY,
    id_cliente INT,
    id_pedido INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);


