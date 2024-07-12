DROP DATABASE IF EXISTS peliculas_db;
CREATE DATABASE peliculas_db;
use peliculas_db;


CREATE TABLE Peliculas  (
    id INT PRIMARY key AUTO_INCREMENT,
    titulo VARCHAR(200),
    anio INT,
    director VARCHAR(200),
    actor_principal VARCHAR(200),
    actor_secundario  VARCHAR(200),
    genero VARCHAR(100)
);

INSERT INTO Peliculas (titulo, anio, director, actor_principal, actor_secundario, genero) VALUES
('The Shawshank Redemption', 1994, 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman', 'Drama'),
('The Godfather', 1972, 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'Crime'),
('The Dark Knight', 2008, 'Christopher Nolan', 'Christian Bale', 'Heath Ledger', 'Action'),
('Pulp Fiction', 1994, 'Quentin Tarantino', 'John Travolta', 'Samuel L. Jackson', 'Crime'),
('The Lord of the Rings: The Return of the King', 2003, 'Peter Jackson', 'Elijah Wood', 'Ian McKellen', 'Fantasy'),
('Forrest Gump', 1994, 'Robert Zemeckis', 'Tom Hanks', 'Robin Wright', 'Drama'),
('Inception', 2010, 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Sci-Fi'),
('Fight Club', 1999, 'David Fincher', 'Brad Pitt', 'Edward Norton', 'Drama'),
('The Matrix', 1999, 'Lana Wachowski', 'Keanu Reeves', 'Laurence Fishburne', 'Sci-Fi'),
('Goodfellas', 1990, 'Martin Scorsese', 'Robert De Niro', 'Ray Liotta', 'Crime'),
('The Empire Strikes Back', 1980, 'Irvin Kershner', 'Mark Hamill', 'Harrison Ford', 'Sci-Fi'),
('One Flew Over the Cuckoo\'s Nest', 1975, 'Milos Forman', 'Jack Nicholson', 'Louise Fletcher', 'Drama'),
('Interstellar', 2014, 'Christopher Nolan', 'Matthew McConaughey', 'Anne Hathaway', 'Sci-Fi'),
('Parasite', 2019, 'Bong Joon-ho', 'Song Kang-ho', 'Lee Sun-kyun', 'Thriller'),
('City of God', 2002, 'Fernando Meirelles', 'Alexandre Rodrigues', 'Leandro Firmino', 'Crime'),
('Se7en', 1995, 'David Fincher', 'Brad Pitt', 'Morgan Freeman', 'Thriller'),
('The Silence of the Lambs', 1991, 'Jonathan Demme', 'Jodie Foster', 'Anthony Hopkins', 'Thriller'),
('It\'s a Wonderful Life', 1946, 'Frank Capra', 'James Stewart', 'Donna Reed', 'Drama'),
('Life Is Beautiful', 1997, 'Roberto Benigni', 'Roberto Benigni', 'Nicoletta Braschi', 'Comedy'),
('The Usual Suspects', 1995, 'Bryan Singer', 'Kevin Spacey', 'Gabriel Byrne', 'Crime'),
('Leon: The Professional', 1994, 'Luc Besson', 'Jean Reno', 'Natalie Portman', 'Action'),
('Saving Private Ryan', 1998, 'Steven Spielberg', 'Tom Hanks', 'Matt Damon', 'War'),
('The Green Mile', 1999, 'Frank Darabont', 'Tom Hanks', 'Michael Clarke Duncan', 'Drama'),
('Gladiator', 2000, 'Ridley Scott', 'Russell Crowe', 'Joaquin Phoenix', 'Action'),
('The Prestige', 2006, 'Christopher Nolan', 'Christian Bale', 'Hugh Jackman', 'Drama'),
('The Departed', 2006, 'Martin Scorsese', 'Leonardo DiCaprio', 'Matt Damon', 'Crime'),
('Whiplash', 2014, 'Damien Chazelle', 'Miles Teller', 'J.K. Simmons', 'Drama'),
('The Intouchables', 2011, 'Olivier Nakache', 'François Cluzet', 'Omar Sy', 'Comedy'),
('The Lion King', 1994, 'Roger Allers', 'Matthew Broderick', 'Jeremy Irons', 'Animation'),
('The Pianist', 2002, 'Roman Polanski', 'Adrien Brody', 'Thomas Kretschmann', 'Biography'),
('Terminator 2: Judgment Day', 1991, 'James Cameron', 'Arnold Schwarzenegger', 'Linda Hamilton', 'Action'),
('Back to the Future', 1985, 'Robert Zemeckis', 'Michael J. Fox', 'Christopher Lloyd', 'Sci-Fi'),
('The Dark Knight Rises', 2012, 'Christopher Nolan', 'Christian Bale', 'Tom Hardy', 'Action'),
('Django Unchained', 2012, 'Quentin Tarantino', 'Jamie Foxx', 'Christoph Waltz', 'Western'),
('WALL-E', 2008, 'Andrew Stanton', 'Ben Burtt', 'Elissa Knight', 'Animation'),
('The Shining', 1980, 'Stanley Kubrick', 'Jack Nicholson', 'Shelley Duvall', 'Horror'),
('Alien', 1979, 'Ridley Scott', 'Sigourney Weaver', 'Tom Skerritt', 'Sci-Fi'),
('Blade Runner 2049', 2017, 'Denis Villeneuve', 'Ryan Gosling', 'Harrison Ford', 'Sci-Fi'),
('Joker', 2019, 'Todd Phillips', 'Joaquin Phoenix', 'Robert De Niro', 'Drama'),
('Avengers: Endgame', 2019, 'Anthony Russo', 'Robert Downey Jr.', 'Chris Evans', 'Action'),
('Braveheart', 1995, 'Mel Gibson', 'Mel Gibson', 'Sophie Marceau', 'Biography'),
('Coco', 2017, 'Lee Unkrich', 'Anthony Gonzalez', 'Gael García Bernal', 'Animation'),
('The Truman Show', 1998, 'Peter Weir', 'Jim Carrey', 'Ed Harris', 'Drama'),
('Inglourious Basterds', 2009, 'Quentin Tarantino', 'Brad Pitt', 'Diane Kruger', 'War'),
('Toy Story', 1995, 'John Lasseter', 'Tom Hanks', 'Tim Allen', 'Animation'),
('Schindler\'s List', 1993, 'Steven Spielberg', 'Liam Neeson', 'Ralph Fiennes', 'Biography'),
('Mad Max: Fury Road', 2015, 'George Miller', 'Tom Hardy', 'Charlize Theron', 'Action'),
('Scarface', 1983, 'Brian De Palma', 'Al Pacino', 'Michelle Pfeiffer', 'Crime'),
('The Grand Budapest Hotel', 2014, 'Wes Anderson', 'Ralph Fiennes', 'F. Murray Abraham', 'Comedy');

-- Una consulta que devuelva todas las películas
select * from peliculas;

-- Una consulta que devuelva las películas de Christopher Nolan (o de algún director que hayas puesto)
select * from Peliculas where director = "Christopher Nolan";

-- Una consulta que ordene las películas por orden descendente en función al año
select * from Peliculas order by anio desc;

-- Una consulta que devuelva las películas entre los años 1990 y 2000
select * from Peliculas where anio between 1990 and 2000;

-- Una consulta que devuelva cuántas películas hay de cada género
SELECT genero, COUNT(*)
FROM Peliculas
GROUP BY genero
HAVING COUNT(*) > 1;