DROP DATABASE IF EXISTS peliculas_complejo;
CREATE DATABASE peliculas_complejo;
use peliculas_complejo;

CREATE TABLE Directores  (
    id_director INT PRIMARY key AUTO_INCREMENT,
    nombre VARCHAR(200),
    fecha_nacimiento DATE,
    telefono VARCHAR(100),
    email VARCHAR(200)
);

CREATE TABLE Actores  (
    id_actor INT PRIMARY key auto_increment,
    nombre VARCHAR(200),
    fecha_nacimiento DATE,
    telefono VARCHAR(100),
    email VARCHAR(200)
);

-- CARDINALIDAD MANY TO ONE - Un director puede hacer mas de una pelicula, pero una pelicula esta hecha por un director
-- CARDINALIDAD MANY TO ONE - Un actor puede hacer mas de una pelicula, pero una pelicula esta hecha por un actor principal y uno secundario
CREATE TABLE Peliculas  (
    id_peliculas INT PRIMARY key auto_increment,
    titulo VARCHAR(200),
    anio INT,
    id_director INT,
    actor_principal INT,
    actor_secundario INT,
    genero VARCHAR(100),
    FOREIGN KEY (id_director) REFERENCES Directores(id_director),
    FOREIGN KEY (actor_principal) REFERENCES Actores(id_actor),
    FOREIGN KEY (actor_secundario) REFERENCES Actores(id_actor)
);

-- CARDINALIDAD MANY TO MANY
CREATE TABLE PeliculasActores  (
    id_actor INT,
    id_peliculas INT,
	primary key (id_actor, id_peliculas),
	foreign key (id_actor) references Actores (id_actor),
	foreign key (id_peliculas) references Peliculas (id_peliculas)
);

INSERT INTO Directores (id_director, nombre, fecha_nacimiento, telefono, email) VALUES
(1, 'Steven Spielberg', '1946-12-18', '555-1234', 'spielberg@example.com'),
(2, 'Christopher Nolan', '1970-07-30', '555-2345', 'nolan@example.com'),
(3, 'Quentin Tarantino', '1963-03-27', '555-3456', 'tarantino@example.com'),
(4, 'Martin Scorsese', '1942-11-17', '555-4567', 'scorsese@example.com'),
(5, 'James Cameron', '1954-08-16', '555-5678', 'cameron@example.com');

INSERT INTO Actores (id_actor, nombre, fecha_nacimiento, telefono, email) VALUES
(1, 'Leonardo DiCaprio', '1974-11-11', '555-6789', 'dicaprio@example.com'),
(2, 'Robert De Niro', '1943-08-17', '555-7890', 'deniro@example.com'),
(3, 'Brad Pitt', '1963-12-18', '555-8901', 'pitt@example.com'),
(4, 'Morgan Freeman', '1937-06-01', '555-9012', 'freeman@example.com'),
(5, 'Tom Hanks', '1956-07-09', '555-0123', 'hanks@example.com'),
(6, 'Meryl Streep', '1949-06-22', '555-1235', 'streep@example.com'),
(7, 'Scarlett Johansson', '1984-11-22', '555-2346', 'johansson@example.com'),
(8, 'Natalie Portman', '1981-06-09', '555-3457', 'portman@example.com'),
(9, 'Tom Cruise', '1962-07-03', '555-4568', 'cruise@example.com'),
(10, 'Johnny Depp', '1963-06-09', '555-5679', 'depp@example.com');

INSERT INTO Peliculas (id_peliculas, titulo, anio, genero, id_director, actor_principal, actor_secundario) VALUES
(1, 'Inception', 2010, 'Sci-Fi', 2, 1, 3),
(2, 'The Wolf of Wall Street', 2013, 'Biography', 4, 1, 9),
(3, 'Django Unchained', 2012, 'Western', 3, 2, 5),
(4, 'The Departed', 2006, 'Crime', 4, 1, 2),
(5, 'Titanic', 1997, 'Romance', 5, 1, 6),
(6, 'Jurassic Park', 1993, 'Adventure', 1, 10, 5),
(7, 'The Matrix', 1999, 'Sci-Fi', 2, 3, 9),
(8, 'Forrest Gump', 1994, 'Drama', 1, 5, 8),
(9, 'Fight Club', 1999, 'Drama', 2, 3, 10),
(10, 'The Silence of the Lambs', 1991, 'Thriller', 3, 2, 4),
(11, 'Schindler''s List', 1993, 'Biography', 1, 2, 8),
(12, 'Interstellar', 2014, 'Sci-Fi', 2, 1, 7),
(13, 'Gladiator', 2000, 'Action', 5, 1, 4),
(14, 'Avatar', 2009, 'Sci-Fi', 5, 3, 8),
(15, 'Pulp Fiction', 1994, 'Crime', 3, 10, 6),
(16, 'The Shawshank Redemption', 1994, 'Drama', 4, 2, 4),
(17, 'Saving Private Ryan', 1998, 'War', 1, 5, 7),
(18, 'The Godfather', 1972, 'Crime', 4, 2, 9),
(19, 'The Dark Knight', 2008, 'Action', 2, 1, 3),
(20, 'Braveheart', 1995, 'Biography', 5, 1, 6),
(21, 'Goodfellas', 1990, 'Crime', 4, 2, 8),
(22, 'The Pianist', 2002, 'Biography', 3, 10, 7),
(23, 'American Beauty', 1999, 'Drama', 2, 3, 5),
(24, 'The Truman Show', 1998, 'Comedy', 1, 5, 8),
(25, 'The Green Mile', 1999, 'Drama', 4, 5, 4),
(26, 'The Sixth Sense', 1999, 'Thriller', 3, 1, 9),
(27, 'Se7en', 1995, 'Thriller', 2, 3, 4),
(28, 'Glory', 1989, 'War', 1, 2, 4),
(29, 'Rain Man', 1988, 'Drama', 1, 5, 9),
(30, 'The Curious Case of Benjamin Button', 2008, 'Drama', 3, 3, 8),
(31, 'Slumdog Millionaire', 2008, 'Drama', 4, 1, 7),
(32, 'The Prestige', 2006, 'Drama', 2, 1, 3),
(33, 'The Grand Budapest Hotel', 2014, 'Comedy', 3, 10, 6),
(34, 'Birdman', 2014, 'Comedy', 3, 3, 7),
(35, 'The Revenant', 2015, 'Adventure', 3, 1, 10),
(36, 'Gone Girl', 2014, 'Thriller', 3, 10, 8),
(37, 'Mad Max: Fury Road', 2015, 'Action', 5, 3, 10),
(38, 'Jaws', 1975, 'Thriller', 1, 2, 8),
(39, 'La La Land', 2016, 'Musical', 2, 1, 7),
(40, 'Whiplash', 2014, 'Drama', 3, 1, 6),
(41, 'A Beautiful Mind', 2001, 'Biography', 4, 5, 8),
(42, 'The Big Short', 2015, 'Biography', 3, 1, 10),
(43, '12 Years a Slave', 2013, 'Biography', 4, 1, 7),
(44, 'The Imitation Game', 2014, 'Biography', 2, 1, 9),
(45, 'Dunkirk', 2017, 'War', 2, 1, 4),
(46, 'Blade Runner 2049', 2017, 'Sci-Fi', 2, 3, 9),
(47, 'Get Out', 2017, 'Horror', 3, 1, 8),
(48, 'The Shape of Water', 2017, 'Fantasy', 3, 10, 4),
(49, 'Three Billboards Outside Ebbing, Missouri', 2017, 'Drama', 3, 1, 6),
(50, 'The Irishman', 2019, 'Crime', 4, 2, 5);

-- Una consulta que devuelva todas las películas
select * from Peliculas;

-- Una consulta que devuelva las películas entre el 1980 y 2000 (usa el código del ejercicio anterior!)
select * from Peliculas where anio between 1980 and 2000;

-- Una consulta que devuelva la cantidad de películas de un género bajo el nombre de "num_peliculas" (Recuerda usar la palabra clave "AS")
SELECT genero, COUNT(*) as num_peliculas
FROM Peliculas
GROUP BY genero
HAVING COUNT(*) > 1;

-- Una consulta que devuelva todas las películas con sus actores principales y secundarios (deberían ser 3 tablas distintas)
select P.titulo, A1.nombre as actor_principal, A2.nombre as actor_secundario
from Peliculas P
join actores A1 on P.actor_principal = A1.id_actor
join actores A2 on P.actor_secundario = A2.id_actor;

-- Una consulta que seleccione todas las películas que tengan un actor específico (Por ejemplo: Tom Hanks)
select A.id_actor
from Actores A
where A.nombre = "Tom Hanks"; -- el resultado es 5

select P.titulo, A1.nombre as actor_principal, A2.nombre as actor_secundario
from Peliculas P
join actores A1 on P.actor_principal = A1.id_actor
join actores A2 on P.actor_secundario = A2.id_actor
where P.actor_principal = 5 or P.actor_secundario = 5;

-- Inserta datos en varias tablas a la vez usando START TRANSACTION y COMMIT. Recuerda usar también SET @variable

START TRANSACTION;

-- para usar esto las tablas tienen que tener auto_increment el id
INSERT INTO Actores (nombre, fecha_nacimiento, telefono, email) VALUES
('Leonardo DiCaprio', '1974-11-11', '321-654-9870', 'leonardo@example.com');
SET @id_actor_principal = LAST_INSERT_ID();

INSERT INTO Actores (nombre, fecha_nacimiento, telefono, email) VALUES
('Meryl Streep', '1949-06-22', '456-789-0123', 'merylstreep@example.com');
SET @id_actor_secundario = LAST_INSERT_ID();

INSERT INTO Peliculas (titulo, anio, genero, id_director, actor_principal, actor_secundario) VALUES
('The Post', 2017, 'Drama', @id_director, @id_actor_principal, @id_actor_secundario);

COMMIT;
