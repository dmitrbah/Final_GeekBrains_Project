USE Human_friends;

CREATE TABLE Animals
(
	Id INT AUTO_INCREMENT PRIMARY KEY, 
	Class_name VARCHAR(20)
);

CREATE TABLE Packed_animals
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Genus_name VARCHAR(20),
    Class_id INT,
    FOREIGN KEY (Class_id) REFERENCES Animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Pets
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Genus_name VARCHAR(20),
    Class_id INT,
    FOREIGN KEY (Class_id) REFERENCES Animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Horses
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Camels
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Donkeys
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Cats
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Dogs
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Hamsters
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);