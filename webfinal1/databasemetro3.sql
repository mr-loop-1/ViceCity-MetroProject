use metro3;
CREATE TABLE Station (
	Station_ID INT,
    Name VARCHAR(20),
    Prev_Station INT,
    Next_Station INT,
	PRIMARY KEY (Station_ID)
);
drop table half;
drop table Hybrid;
truncate table half;
truncate table Station;
INSERT INTO Station VALUES
	(1, 'Forest_Hills', NULL, 2),
    (2, 'Downtown', 1, 3),
    (3, 'Vice_Port', 2, 10),
    (4, 'Vice_City_Beach', NULL, 10),
    (5, 'Prawn_Island', NULL, 10),
    (6, 'Little_Haiti', NULL, 7),
    (7, 'Ocean_Beach', 6, 8),
    (8, 'Food_Street', -1, -1),
    (9, 'Grand_Library', NULL, 8),
    (10, 'Airport', -1, -1),
    (11, 'Shipyard', -1, -1),
    (12, 'Sheep_Village', NULL, 13),
    (13, 'Govt_Office', 12, 14),
    (14, 'Star_Town', -1, -1),
    (15, 'Old_City', 14, 11),
    (16, 'Leaf_Links', 17, 11),
    (17, 'City_Scrap', 18, 16),
    (18, 'New_Downtown', 19, 17),
    (19, 'Subways', NULL, 18),
    (20, 'Trench', NULL, 14);
    
CREATE TABLE Hybrid (
	Hybrid_ID INT,
    Star_Town INT,
    Shipyard INT,
    Airport INT,
    Food_Street INT
);

INSERT INTO Hybrid VALUES 
	(1, 15, 10, 11, 9),
    (2, 13, 16, 5, 7),
    (3, 20, 15, 4, 10),
    (4, NULL, NULL, 3, NULL), 
    (5, NULL, NULL, 8, NULL),
    (6, NULL, NULL, NULL, NULL);
    
CREATE TABLE half
	(Shipyard VARCHAR(20),
    Airport VARCHAR(20)
);

INSERT INTO half VALUES
	('Forest_Hills','Sheep_Village'), ('Downtown','Govt_Office'), ('Vice_Port','Star_Town'), ('Vice_City_Beach','Old_City'), 
    ('Prawn_Island','Leaf_Links'), ('Little_Haiti','City_Scrap'), ('Ocean_Beach','New_Downtown'), ('Food_Street','Subways'), ('Grand_Library','Trench');

create table details (
	Ticket INT,
    Fname VARCHAR(20),
    Lname VARCHAR(20),
    Phone INT,
    Booking date,
    starter VARCHAR(20),
    dest VARCHAR(20)
);

insert into details values
	(118734, 'hello', 'world', 1123456789, 123456781234, 20210522, 'A', 'F');