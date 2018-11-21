/* Table animal */
CREATE DATABASE db_animaux;

CREATE TABLE tbl_animal (
  id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  espece varchar(40) NOT NULL,
  sexe char(1) DEFAULT NULL,
  date_naissance datetime NOT NULL,
  nom varchar(30) DEFAULT NULL,
  commentaires text,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

LOCK TABLES Animal WRITE;
INSERT INTO tbl_animal(espece, sexe, date_naissance, nom, commentaires) VALUES
('chien','M','2010-04-05 13:43:00','Rox','Mordille beaucoup'),
('chat',NULL,'2010-03-24 02:23:00','Roucky',NULL),
('chat','F','2010-09-13 15:02:00','Schtroumpfette',NULL),
('tortue','F','2009-08-03 05:12:00',NULL,NULL),
('chat',NULL,'2010-10-03 16:44:00','Choupi','Né sans oreille gauche'),
('tortue','F','2009-06-13 08:17:00','Bobosse','Carapace bizarre'),
('chien','F','2008-12-06 05:18:00','Caroline',NULL),
('chat','M','2008-09-11 15:38:00','Bagherra',NULL),
('tortue',NULL,'2010-08-23 05:18:00',NULL,NULL),
('chien','M','2010-07-21 15:41:00','Bobo',NULL),
('chien','F','2008-02-20 15:45:00','Canaille',NULL),
('chien','F','2009-05-26 08:54:00','Cali',NULL),
('chien','F','2007-04-24 12:54:00','Rouquine',NULL),
('chien','F','2009-05-26 08:56:00','Fila',NULL),
('chien','F','2008-02-20 15:47:00','Anya',NULL),
('chien','F','2009-05-26 08:50:00','Louya',NULL),
('chien','F','2008-03-10 13:45:00','Welva',NULL),
('chien','F','2007-04-24 12:59:00','Zira',NULL),
('chien','F','2009-05-26 09:02:00','Java',NULL),
('chien','M','2007-04-24 12:45:00','Balou',NULL),
('chien','F','2008-03-10 13:43:00','Pataude',NULL),
('chien','M','2007-04-24 12:42:00','Bouli',NULL),
('chien','M','2007-04-12 05:23:00','Cartouche',NULL),
('chien','M','2006-05-14 15:50:00','Zambo',NULL),
('chien','M','2006-05-14 15:48:00','Samba',NULL),
('chien','M','2008-03-10 13:40:00','Moka',NULL),
('chien','M','2006-05-14 15:40:00','Pilou',NULL),
('chat','M','2009-05-14 06:30:00','Fiero',NULL),
('chat','M','2007-03-12 12:05:00','Zonko',NULL),
('chat','M','2008-02-20 15:45:00','Filou',NULL),
('chat','M','2007-03-12 12:07:00','Farceur',NULL),
('chat','M','2006-05-19 16:17:00','Caribou',NULL),
('chat','M','2008-04-20 03:22:00','Capou',NULL),
('chat','M','2006-05-19 16:56:00','Raccou','Pas de queue depuis la naissance'),
('chat','M','2009-05-14 06:42:00','Boucan',NULL),
('chat','F','2006-05-19 16:06:00','Callune',NULL),
('chat','F','2009-05-14 06:45:00','Boule',NULL),
('chat','F','2008-04-20 03:26:00','Zara',NULL),
('chat','F','2007-03-12 12:00:00','Milla',NULL),
('chat','F','2006-05-19 15:59:00','Feta',NULL),
('chat','F','2008-04-20 03:20:00','Bilba','Sourde de l''oreille droite à 80%'),
('chat','F','2007-03-12 11:54:00','Cracotte',NULL),
('chat','F','2006-05-19 16:16:00','Cawette',NULL),
('tortue','F','2007-04-01 18:17:00','Nikki',NULL),
('tortue','F','2009-03-24 08:23:00','Tortilla',NULL),
('tortue','F','2009-03-26 01:24:00','Scroupy',NULL),
('tortue','F','2006-03-15 14:56:00','Lulla',NULL),
('tortue','F','2008-03-15 12:02:00','Dana',NULL),
('tortue','F','2009-05-25 19:57:00','Cheli',NULL),
('tortue','F','2007-04-01 03:54:00','Chicaca',NULL),
('tortue','F','2006-03-15 14:26:00','Redbul','Insomniaque'),
('tortue','M','2007-04-02 01:45:00','Spoutnik',NULL),
('tortue','M','2008-03-16 08:20:00','Bubulle',NULL),
('tortue','M','2008-03-15 18:45:00','Relou','Surpoids'),
('tortue','M','2009-05-25 18:54:00','Bulbizard',NULL),
('perroquet','M','2007-03-04 19:36:00','Safran',NULL),
('perroquet','M','2008-02-20 02:50:00','Gingko',NULL),
('perroquet','M','2009-03-26 08:28:00','Bavard',NULL),
('perroquet','F','2009-03-26 07:55:00','Parlotte',NULL);
UNLOCK TABLES;

ALTER TABLE tbl_animal
ADD INDEX [nom_index] (colonne_index [, colonne2_index ...]); -- Ajout d'un index simple

ALTER TABLE tbl_animal
ADD UNIQUE [nom_index] (colonne_index [, colonne2_index ...]); -- Ajout d'un index UNIQUE

ALTER TABLE tbl_animal
ADD FULLTEXT [nom_index] (colonne_index [, colonne2_index ...]); -- Ajout d'un index FULLTEXT
