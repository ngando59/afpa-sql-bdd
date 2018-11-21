
CREATE DATABASE db_name;
DROP DATABASE db_name.
USE db_name;
SHOW tables;
DESCRIBE tbl_table;

 CREATE TABLE tbl_film (
   id INT(11) NOT NULL AUTO_INCREMENT,
   num_film INT(11) NOT NULL,
	 titre VARCHAR(255) NOT NULL,
	 duree INT(11) NOT NULL,
	 annee_sortie INT(11) NOT NULL,
   PRIMARY KEY (id)
 );

UPDATE tbl_table set champ = ''  WHERE id =

INSERT INTO tbl_table (champ1, champ2, champ3, champ4) VALUES
('champ1', 'champ2', champ3, 'champ4'),
('champ1', 'champ2', champ3, 'champ4'),
('champ1', 'champ2', champ3, 'champ4'),
('champ1', 'champ2', champ3, 'champ4');

SELECT * FROM tbl_table;
DELETE FROM tbl_table WHERE id = ;

 CREATE TABLE tbl_film (
     id INT(11) NOT NULL AUTO_INCREMENT,
     num_film INT(11) NOT NULL,
     titre VARCHAR(255) NOT NULL,
	   duree INT(11) NOT NULL,
	   annee_sortie INT(11) NOT NULL,
     PRIMARY KEY (id)
 );
/* ADD PRIMARY KEY (id);
 * ALTER TABLE tbl_film DROP PRIMARY KEY ;
 * ALTER TABLE tbl_table ADD COLUMN (d DATETIME)
 * ALTER TABLE animals AUTO_INCREMENT= 0;
 */

INSERT INTO tbl_film (num_film, titre, duree, annee_sortie) VALUES
(1, 'La Planète des singes', 90, 2001),
(2, 'Star War', 90, 2014),
(3, 'Le hobbit', 90, 2010),
(4, 'Bienvenue chez les ch\'tiss', 90, 2007),
(5, 'Batman et Robbin', 120, 2000),
(6, 'Twilight', 120, 2006),
(7, 'Le seigneur des anneaux', 90, 2005),
(8, 'Mon nom est personne', 80, 1970),
(9, 'La ruée vers l\'or', 60, 1930),
(9, 'Transformers', 90, 2012)
(132, 'Cristeros', 145, 2014),
(325, 'La ligne verte', 189, 2000),
(456, 'Coco', 104, 2017),
(3298, 'Your Name', 110, 2016),
(4587, '12 hommes en colère', 95, 2007),
(32569, 'Le parrain', 175, 2013),
(1254, 'Django Unchained', 164, 2013),
(45, 'Tu ne tueras point', 140, 2016);

CREATE FUNCTION plus_long() RETURNS INT RETURN
	(SELECT titre as titre, MAX(duree) as duree FROM tbl_film);

CREATE FUNCTION plus_court() RETURNS INT RETURN
	(SELECT titre as titre, MIN(duree) as duree FROM tbl_film);



CREATE TABLE tbl_pizza (
	id INT(11) NOT NULL AUTO_INCREMENT,
	libelle VARCHAR(255) NOT NULL,
	reference VARCHAR(10) NOT NULL,
	prix INT(3) NOT NULL,
	url_image VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
)

CREATE TABLE tbl_client (
	id INT(11) NOT NULL AUTO_INCREMENT,
	nom VARCHAR(255) NOT NULL,
	prenom VARCHAR(255) NOT NULL,
	adress VARCHAR(255) NOT NULL,
	tel_fixe VARCHAR(15) NULL,
	tel_portable VARCHAR(255) NOT NULL,
	date_naissance DATE NOT NULL,
	email VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
)

INSERT INTO tbl_pizza (libelle, reference, prix, url_image) VALUES
('Reine', 'PREI', 10, 'reine.jpg'),
('Regina', 'PREG', 9, 'regina.jpg'),
('Napolitaine', 'PNAP', 10, 'napolitaine.jpg'),
('4 fromages', 'P4FR', 10, '4fromages.jpg'),
('Chorizo', 'PCHO', 10, 'chorizo.jpg'),
('4 saisons', 'P4SA', 9, '4saisons.jpg'),
('Bolognese', 'PBOL', 12, 'bolognese.jpg'),
('La pizza de la mort', 'PMOR', 20, 'circle.png');

ALTER TABLE tbl_client ADD COLUMN num_client INT(11) NOT NULL;
ALTER TABLE tbl_client DROP COLUMN num_client INT(11);
ALTER TABLE tbl_client ADD COLUMN num_client INT(11) NOT NULL AFTER id;
ALTER TABLE tbl_client MODIFY COLUMN num_client INT(11) NOT NULL AFTER id;

INSERT INTO tbl_client(num_client,nom, prenom, sexe, adress, tel_fixe, tel_portable, date_naissance, email) VALUES
(1, 'Ndoe', 'John', 'M', '2 Rue de Marseille\, 59000 LILLE', NULL, '+33600000001', '1990-02-01','johnndoe@gmail.com'),
(2, 'Dae', 'Jane', 'F', '2 Rue d\' oran\, 59000 LILLE', NULL, '+33600000002', '1981-10-25','janedae@gmail.com'),
(3, 'Man', 'Super', 'M', '2 Rue du port\, 59650 VILLENEUVE D\'ASCQ', NULL, '+33600000003', '1970-11-25','superman@gmail.com'),
(4, 'Man', 'Iron', 'M', '2 Rue de Lens, 59000 LILLE', NULL, '+33600000004', '1980-12-25','ironman@gmail.com'),
(5, 'Pool', 'Dead', 'M', '2 Rue du paradis, 93600 AULNAY SOUS BOIS', '+33122234568', '+33600000005', '1978-04-15','dpool@gmail.com');

INSERT INTO tbl_client(num_client,nom, prenom, sexe, adress, tel_fixe, tel_portable, date_naissance, email) VALUES
(6, 'Woman', 'Wonder', 'F', '11 rue de l\'impasse 75000 \, Paris', NULL, '+33600000006', '1998-03-07','wonderwoman@gmail.com'),
(7, 'Moon', 'Sailor', 'F', '2 Avenue de l\'espoir', '+33120304050', '+33600000007', '1989-04-19','sailormoon@gmail.com'),
(8, 'Princesse', 'Sarah', 'F', '44 Goove Street, San Andreas', NULL, '+1 220 505 66', '1970-02-11','princesssarah@gmail.com'),
(9, 'Goku', 'San', 'M', '13 Avenue des Sayans, 75018 Paris', NULL, '+33600000008', '1963-05-01','sangoku@gmail.com'),
(10, 'White', 'Gammy', 'F', '18 Rue de la justice, 59020 Roubaix', '+3330102030405', '+33600000009', '2000-07-11','gammy.white@gmail.com');

INSERT INTO tbl_client(num_client,nom, prenom, sexe, adress, tel_fixe, tel_portable, date_naissance, email) VALUES
(123, 'Armani', 'Sophie', 'F', 'Lille', '03215469', '0645879632','1950-01-01','sophie.gmail'),
(354, 'Berurier', 'Laurent', 'M', 'Lesquin','03269854', '0698452136','1960-01-01', 'BERURIER@yahoo.fr'),
(245, 'Denis', 'Sylvain', 'M', 'Paris','0321487526', '0698745213','1970-01-01', 'DENIS@hotmail.com'),
(598, 'Ferniot', 'Michelle', 'F', 'Lorient','0123456987', '0695488754','1980-01-01', 'FERNIOT@gmail.com'),
(12, 'Lopert', 'Nikos', 'M', 'Paris', '0125634789', '0636251478','1990-01-01', 'LOPERT@live.com'),
(78, 'Millot', 'Perrine', 'F', 'Brest', '0212458796', '0636985698','2000-01-01', 'MILLOT@yahoo.fr'),
(985, 'Restri', 'Mélanie', 'F', 'Strasbourg', '0236547895', '0698452136','2001-01-01', 'RESTRI@gmail.com'),
(1452, 'Amisse', 'François', 'M', 'Marseille', '015426987', '0698363636','1995-01-01', 'AMISSE@outlook.com'),
(985, 'Merbeau', 'Nicolas', 'M', 'Toulouse', '0365478998', '0695959595','1966-01-01', 'MERBEAU@gmail.com'),
(3256, 'Chevalier', 'Lionel', 'M', 'Paris', '0312457812', '0645124578','1954-01-01', 'CHEVALIER@yahoo.com'),
(112589, 'Toto', 'Titi', 'M', 'Lille', '0312124578', '0695032145','1965-01-01', 'TOTO@gmail.com'),
(11256, 'Dubray', 'Judicael', 'M', 'Lyon', '0319824578', '061212364578','1987-01-01', 'DUBRAY@yahoo.fr');

SELECT * FROM tbl_client WHERE tel_fixe IS NULL;
SELECT * FROM tbl_client WHERE tel_fixe IS NOT NULL;
SELECT nom as nom_client, prenom as prenom_client, DATE_FORMAT(date_naissance, '%d/%m/%Y') as date_de_naissance FROM tbl_client ORDER BY date_naissance ASC;

UPDATE tbl_client SET email = 'berurier@gmail.com' WHERE id = 12;
UPDATE tbl_client SET email = 'denis@gmail.com' WHERE id = 13;
UPDATE tbl_client SET email = 'ferniot@gmail.com' WHERE id = 14;
UPDATE tbl_client SET email = 'lopert@live.com' WHERE id = 15;
UPDATE tbl_client SET email = 'millot@yahoo.fr' WHERE id = 16;
UPDATE tbl_client SET email = 'restri@gmail.com' WHERE id = 17;
UPDATE tbl_client SET email = 'amisse@outlook.com' WHERE id = 18;
UPDATE tbl_client SET email = 'merbeau@gmail.com' WHERE id = 19;
UPDATE tbl_client SET email = 'chevalier@yahoo.com' WHERE id = 20;
UPDATE tbl_client SET email = 'toto@gmail.com' WHERE id = 21;
UPDATE tbl_client SET email = 'dubray@yahoo.fr' WHERE id = 22;


UPDATE tbl_client SET adress = "10 rue des Martyrs, 59000 LILLE" WHERE id = 11;
UPDATE tbl_client SET adress = "2 Boulevard des Indics, 59810 LESQUIN" WHERE id = 12;
UPDATE tbl_client SET adress = "Avenue des champs Elysés, 75000 Paris" WHERE id = 13;
UPDATE tbl_client SET adress = "Rue des rêves brisés, 56100 Lorient" WHERE id = 14;
UPDATE tbl_client SET adress = "Rue du terre terre, 75018 Paris" WHERE id = 15;
UPDATE tbl_client SET adress = "Rue de la mémoire, 29200 Brest" WHERE id = 16;
UPDATE tbl_client SET adress = "Avenue des Condés, 67100 Strasbourg" WHERE id = 17;
UPDATE tbl_client SET adress = "Boulevard des défenseurs, 13000 Marseille" WHERE id = 18;
UPDATE tbl_client SET adress = "Rue de la justice, 33000 Toulouse" WHERE id = 19;
UPDATE tbl_client SET adress = "Rue de la mairie, 75020 Paris" WHERE id = 20;
UPDATE tbl_client SET adress = "10 rue des Martyrs, 59000 LILLE" WHERE id = 21;
UPDATE tbl_client SET adress = "2 Boulevard des Indics, 59810 LESQUIN" WHERE id = 22;
UPDATE tbl_client SET adress = "Avenue des champs Elysés, 75000 Paris" WHERE id = 23;
UPDATE tbl_client SET adress = "Rue des rêves brisés, 56100 Lorient" WHERE id = 24;
