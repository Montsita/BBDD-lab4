DROP DATABASE IF EXISTS funcionesBBDD_biblioteca;
CREATE DATABASE funcionesBBDD_biblioteca;
USE funcionesBBDD_biblioteca;



create table Autores (
	id_autor INT primary key,
	nombre VARCHAR (255),
	fecha_nacimiento VARCHAR (50),
	nacionalidad VARCHAR (150)
);

create table Generos (
	id_genero INT primary key,
	nombre VARCHAR (255),
	descripcion VARCHAR (255)
);

create table Miembros (
	identificacion INT primary key,
	nombre VARCHAR (255),
	direccion VARCHAR (255),
	telefono VARCHAR (60),
	correo_electronico VARCHAR (150)
);


-- CARDINALIDAD MANY TO ONE - Un miembro puede tener uno o más préstamos, y un préstamo está asociado a un miembro.
create table Prestamos (
	id_prestamos INT primary key,
	fecha_inicio VARCHAR (50),
	fecha_devolucion VARCHAR (50),
	id_miembro INT,
	FOREIGN KEY (id_miembro) REFERENCES Miembros(identificacion)
);


create table Libros (
	titulo VARCHAR (255),
	ISBN INT primary key,
	fecha_publicacion VARCHAR (50)
);


-- CARDINALIDAD MANY TO MANY - Un libro puede tener uno o más autores, y un autor puede haber escrito uno o más libros
CREATE TABLE libros_autores (
id_autor INT,
ISBN INT,
primary key (ISBN, id_autor),
foreign key (ISBN) references Libros (ISBN),
foreign key (id_autor) references Autores (id_autor)
);


-- CARDINALIDAD MANY TO MANY - Un préstamo puede incluir uno o más libros, y un libro puede ser incluido en diferentes préstamos a lo largo del tiempo.
create table libros_prestamos (
	ISBN_libro INT,
	id_prestamo INT,
	primary key (ISBN_libro, id_prestamo),
	foreign key (ISBN_libro) references Libros (ISBN),
	foreign key (id_prestamo) references Prestamos (id_prestamos)
);


-- CARDINALIDAD MANY TO MANY - Un libro puede pertenecer a uno o más géneros, y un género puede tener uno o más libros.
create table libros_generos (
	ISBN_libro INT,
	id_genero INT,
	primary key (ISBN_libro, id_genero),
	foreign key (ISBN_libro) references Libros (ISBN),
	foreign key (id_genero) references Generos (id_genero)
);

