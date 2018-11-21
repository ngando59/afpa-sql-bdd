CREATE DATABASE db_ecole;

CREATE TABLE tbl_etudiant (
  id INT(5) AUTO_INCREMENT,
  num_etudiant INT(5) NOT NULL UNIQUE,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  date_naissance DATE NOT NULL,
  sexe VARCHAR(1) NOT NULL,
  CONSTRAINT pk_etudiant PRIMARY KEY(id)
);

ALTER TABLE tbl_etudiant ADD COLUMN email VARCHAR(255) NOT NULL;
ALTER TABLE tbl_etudiant ADD COLUMN adresse TEXT NULL;
CREATE FULLTEXT INDEX index_full_adresse ON tbl_etudiant(adresse);

INSERT INTO tbl_etudiant(num_etudiant, nom, prenom, date_naissance, sexe, email, adresse) VALUES
('10500', 'Armani', 'Sophie', '1980-01-01', 'F', 'sophie.gmail.com', '10 rue des Martyrs, 59000 Lille' ),
('10501', 'Berurier', 'Laurent', '1981-02-11', 'M', 'berurier.laurent@yahoo.fr', 'Boulevard des Indics, 59810 Lesquin'),
('10502', 'Denis', 'Sylvain', '1982-03-15', 'M', 'denis82@live.fr', 'Avenue des champs Elysés, 75000 Paris'),
('10503', 'Ferniot', 'Michelle', '1988-04-22', 'F', 'm.ferniot@gmail.com', 'Rue des rêves brisés, 56100 Lorient'),
('10504', 'Millot', 'Perrine', '1985-09-22', 'F', 'perriot@hotmail.com', 'Rue du terre terre, 75018 Paris'),
('10505', 'Restri', 'Mélanie', '1988-10-24', 'F', 'm.restri@free.fr', 'Rue de la mémoire, 29200 Brest'),
('10506', 'Dupont', 'Flore', '1995-11-11', 'F', 'f.dup@facebook.com', 'Avenue des Condés, 67100 Strasbourg'),
('10507', 'Martin', 'Joseph', '1990-12-12', 'M', 'j.martin@gmail.com', 'Boulevard des défenseurs, 13000 Marseille'),
('10508', 'Ibro', 'Zlato', '1987-05-14', 'M', 'zlat75@yahoo.fr', 'Rue de la justice, 33000 Toulouse'),
('10509', 'Merbeau', 'Jean', '2000-10-11', 'M', 'jean.merbeau@outlook.com', 'Rue de la mairie, 75020 Paris'),
('10510', 'Square', 'Maria', '1978-01-22', 'F', 'mariacarrey18@live.com', '10 rue des Martyrs, 59000 Lille'),
('10511', 'Carrey', 'Maria', '1960-03-08', 'F', 'maria.carrey18@live.com', '10 rue des Martyrs, 59000 Lille'),
('10512', 'Eyango', 'vincent', '1993-05-19', 'M', 'vinc.eyan@outlook.com',  '2 Boulevard des Indics, 59810 Lesquin' ),
('10513', 'Milo', 'Bebey', '2001-06-09', 'M', 'b.milo59@gmail.com', 'Avenue des champs Elysés, 75000 Paris'),
('10514', 'Lopez', 'Joe', '1984-12-25', 'M', 'jo.lopez@laposte.net', 'Rue des rêves brisés, 56100 Lorient');


/*
 * Afficher les étudiant nés après le 01 juin 1990
   select * from tbl_etudiant where date_naissance > '1990-06-01';


  Afficher les étudiants de sexe masculin nés après le 05 juillet 1989
  select * from tbl_etudiant where date_naissance > '1989-07-05' and sexe = 'M';


  Afficher les étudiants de sexe féminin et trier par nom dans l'ordre alphabétique
  select * from tbl_etudiant where sexe = 'F' order by nom asc;


  Afficher les étudiants dont le nom commence par la lettre 'd' et trier par année de naissance
  select * from tbl_etudiant where nom like 'd%' order by date_naissance asc;

  *
  */

CREATE TABLE tbl_enseignant (
  id INT(5) AUTO_INCREMENT,
  numero_enseignant INT(5) NOT NULL UNIQUE,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  date_naissance DATE NOT NULL,
  sexe VARCHAR(1) NOT NULL,
  grade VARCHAR(3) NOT NULL,
  date_embauche DATE NOT NULL,
  CONSTRAINT pk_enseignant PRIMARY KEY(id)
);

INSERT INTO tbl_enseignant(numero_enseignant, nom, prenom, date_naissance, sexe, grade, date_embauche) VALUES
(10001, 'Mendy', 'Bernard', '1970-08-15', 'M', 'MCF', '2004-10-04'),
(10002, 'Galant', 'Adeline', '1985-12-12', 'F', 'ASS', '2017-09-01'),
(10003, 'Gaori', 'Houcine', '1981-11-10', 'M', 'PR', '2017-09-01'),
(10004, 'Maharaj', 'Mahmoud', '1980-05-19', 'M', 'PR', '2015-02-01'),
(10005, 'Savatier', 'Nicole', '1982-04-22', 'F', 'PR', '2013-02-01'),
(10006, 'Mbarga', 'Evelyne', '1992-07-05', 'F', 'PR', '2018-01-01');

INSERT INTO tbl_enseignant(numero_enseignant, nom, prenom, date_naissance, sexe, grade, date_embauche) VALUES
(10007,'Bertrand', 'Pierre', '1955-11-13', 'M', 'ASS','2011-10-01'),
(10008,'Dupond','Auguste', '1966-05-12', 'M','MCF','2010-10-27'),
(10009,'Aubois','Jean', '1970-06-05', 'M','MCF','2008-03-12'),
(10010,'Boyer','Julie', '1980-01-25', 'M','ASS','2011-02-10'),
(10011,'Vincent','Paul', '1975-02-19', 'M','PR','2009-03-13'),
(10012,'Simon','Etienne', '1985-12-22', 'M','ASS','2007-05-12'),
(10013,'Martin','Julie', '1986-12-22', 'F','ASS','2011-05-12'),
(10014,'Simon','Sophie', '1984-09-16', 'F','MCF','2015-06-03'),
(10015,'Knightley','Keira', '1978-06-12', 'F','ASS','2004-09-02'),
(10016,'Winslet','Natalie', '1977-01-23', 'F','PR','2012-04-17');

/*
 *
 *
/* Lister les enseignants par ordre alphabétique des noms */
  select * from tbl_enseignant order by nom asc;

/*  Lister les enseignants dont le prénom commence par la lettre 'j' */
  select * from tbl_enseignant where prenom like 'j%';


/* Lister les enseignants par grade */
  select * from tbl_enseignant order by grade;


/* Afficher le nom, grade et la date d'embauche des enseigants */
  select nom, grade, DATE_FORMAT(date_embauche, '%d/%m/%Y') as date_embauche from tbl_enseignant;


/* Afficher le nom, grade et la date d'embauche des maîtres de conférence(MCF) */
  select nom, grade, DATE_FORMAT(date_embauche, '%d/%m/%Y') as date_embauche from tbl_enseignant where grade = 'MCF';

/* Lister les enseigants masculins embauchés après le 01 janvier 2000 */
  select * from tbl_enseignant where (sexe = 'M') and (date_embauche > '2000-01-01');


/* Afficher nom, prenom, grade et anciennté des enseigants */
  select nom, prenom, grade, YEAR(CURRENT_DATE())-YEAR(date_embauche) as anciennte from tbl_enseignant;


/* Afficher nom, prenom et grade des enseignants qui ont 4 ans d'ancienneté ou plus */
  select nom, prenom, grade from tbl_enseignant where YEAR(CURRENT_DATE())-YEAR(date_embauche) >= 4;


/* Lister les enseigants par ancienneté */
  select nom, prenom, grade, YEAR(CURRENT_DATE())-YEAR(date_embauche) as anciennte from tbl_enseignant order by anciennte asc;

/*  Afficher le nombre des enseignants masculins qui ont 10 ans d'anciennté ou plus */
  select count(*) as homme_10_ans_ou_plus from tbl_enseignant where (YEAR(CURRENT_DATE())-YEAR(date_embauche) >= 10) and (sexe = 'M');

/*  Ajouter 10 jour à la date courrante */
  select adddate(CURRENT_DATE, 15)
  select adddate(CURRENT_DATE, INTERVAL 15 DAY)


/* Ajouter 2 mois */
  select adddate(CURRENT_DATE, INTERVAL 15 MONTH)


/* Ajouter 5 ans */
  select adddate(CURRENT_DATE, INTERVAL 15 YEAR)


/* Rajouter 14 mois d'ancienneté à tous le monde */
  UPDATE tbl_enseignant SET date_embauche = date_embauche - INTERVAL 14 MONTH;


/* Le dernier enseignant qui a intégré l'université */
  SELECT *  FROM tbl_enseignant ORDER BY date_embauche DESC LIMIT 1;
  SELECT MAX(date_embauche) as date_embauche_dernier_enseignant FROM tbl_enseignant;

/* Afficher la première date d’embauche (la date d’embauche du premier enseignant embauché) */
  SELECT DATE_FORMAT(date_embauche,'%d/%m/%Y') as date_embauche_premier_enseignant FROM tbl_enseignant ORDER BY date_embauche ASC LIMIT 1;
  SELECT MIN(date_embauche) as date_embauche_premier_enseignant FROM tbl_enseignant;


/* Moyenne d'age des enseignants */
  SELECT AVG( YEAR(CURDATE()) - YEAR(date_naissance) )  as age_moyen FROM tbl_enseignant;


CREATE TABLE tbl_matiere (
  id INT(5) AUTO_INCREMENT,
  numero_matiere INT(5) NOT NULL,
  nom VARCHAR(50) NOT NULL,
  coef INT(2) NOT NULL,
  date_debut DATE NOT NULL,
  date_fin DATE NOT NULL,
  id_enseignant INT(5),
  CONSTRAINT pk_matiere PRIMARY KEY(id),
  CONSTRAINT u_matiere UNIQUE(numero_matiere),
  CONSTRAINT fk_matiere_enseignant foreign key (id_enseignant) REFERENCES tbl_enseignant(id)
);

INSERT INTO tbl_matiere(numero_matiere,nom, coef, date_debut, date_fin, id_enseignant) VALUES
(1, 'Programmation', 3, '2018-01-01', '2018-04-04', 1),
(2, 'Base de données', 2, '2018-04-04', '2018-05-10', 5),
(3, 'G.P.A.O.', 2, '2018-11-01', '2018-12-04', 7),
(4, 'Logique', 1, '2018-06-01', '2018-08-04', 9),
(5, 'Statistiques', 1, '2018-04-04', '2019-01-01', 2);

INSERT INTO tbl_matiere(numero_matiere, nom, coef, date_debut, date_fin, id_enseignant) VALUES
(6,'Physique',3,'2017-02-03','2018-04-14',1),
(7,'Chimie',2,'2018-06-11','2018-10-013',5),
(8,'Java',2,'2018-11-16','2018-12-04',7),
(9,'Web',1,'2018-10-21','2018-12-24',9),
(10,'Spring',1,'2016-01-23','2017-04-04',2);


/* trouver le no de la matiere enseigner par 'Martin '*/
select tbl_matiere.nom as nom from tbl_matiere, tbl_enseignant where (tbl_matiere.id_enseignant = tbl_enseignant.id) and (tbl_enseignant.nom = 'mendy');

/* Tous les enseigant qui enseignent une matère sauf la Programmation*/
select tbl_enseignant.nom as nom_enseignant, tbl_enseignant.prenom as prenom_enseignant, tbl_matiere.nom as matiere from tbl_enseignant, tbl_matiere where (tbl_enseignant.id = tbl_matiere.id_enseignant ) and ( tbl_matiere.nom != 'Programmation' ) order by tbl_enseignant.nom asc;

/* Afficher pour la formation qui début le plus tard possible(date de début maximale pour la matière) le nom, prenom de l’enseignant,nom de la formation et la date de début quand le nom de l’enseigannt est ‘Martin’ ou ‘Dupond’ */
select tbl_enseignant.nom as nom_enseignant, tbl_enseignant.prenom as prenom_enseignant, tbl_matiere.date_debut as date_debut from tbl_enseignant, tbl_matiere
  where tbl_enseignant.id = tbl_matiere.id_enseignant and (tbl_enseignant.nom = 'Martin' or tbl_enseignant.nom = 'Dupond') order by tbl_matiere.date_debut desc limit 1;

/* Lister toutes les infos concernant les matières enseignées par ‘Martin’ */
select * from tbl_matiere m inner join tbl_enseignant e on m.id_enseignant = e.id where e.nom = 'Martin';

/* Afficher le nom de la matière enseignée par ‘Martin’ */
select m.nom as nom_matiere from tbl_matiere m inner join tbl_enseignant e on m.id_enseignant = e.id where e.nom = 'Martin';

/* Afficher pour la formation qui débute le plus tard possible(date de début maximale pour la matière) le nom, prenom de l’enseignant,nom de la formation et la date de début quand le nom de l’enseingant est ‘Martin’ ou ‘Dupond’ */
select e.nom as nom_enseignant, e.prenom as prenom_enseignant, m.nom as matiere, m.date_debut as date_debut from tbl_matiere m
    inner join tbl_enseignant e on m.id_enseignant = e.id
    where e.nom = 'Martin' or e.nom = 'Dupond' order by m.date_debut desc limit 1;



/* Lister le nom, le coefficient et l'enseignant de toutes les matières */
select m.nom as matiere, m.coef as coefficient, concat(e.prenom,' ',e.nom) as enseignant from tbl_matiere m
  inner join tbl_enseignant e on m.id_enseignant = e.id ;

/* Lister le nom, la durée en jours et l'enseignant de toutes les matières */
select m.nom as matiere, concat(datediff(m.date_fin, m.date_debut),' ','jours') as duree, concat(e.prenom,' ',e.nom) as enseignant from tbl_matiere m
  inner join tbl_enseignant e on m.id_enseignant = e.id ;

/* Lister le nom et l'enseignant de toutes les matières en cours */
select m.nom as matiere_en_cours, concat('Du ', DATE_FORMAT(m.date_debut,'%d/%m/%Y'), ' au ', DATE_FORMAT(m.date_fin,'%d/%m/%Y')) as periode, concat(e.prenom,' ',e.nom) as enseignant from tbl_matiere m
  inner join tbl_enseignant e on m.id_enseignant = e.id
  where m.date_fin >= CURRENT_DATE() and m.date_debut <= CURRENT_DATE();

/* Lister le nom et l'enseignant de toutes les matières déjà finies */
select m.nom as matiere_finie, concat('Du ', DATE_FORMAT(m.date_debut,'%d/%m/%Y'), ' au ', DATE_FORMAT(m.date_fin,'%d/%m/%Y')) as periode, concat(e.prenom,' ',e.nom) as enseignant from tbl_matiere m
  inner join tbl_enseignant e on m.id_enseignant = e.id
  where m.date_fin < CURRENT_DATE();

/* Lister tous les enseignants avec eventuellement les matières qu'ils enseignent */
select e.nom as nom_enseignant, e.prenom as prenom_enseignant, m.nom as matiere from tbl_enseignant e
  left join tbl_matiere m on m.id_enseignant = e.id;

/* Lister toutes les matières avec les enseignants qui les enseignent */
select  m.nom as matiere, concat(e.prenom,' ',e.nom) as enseignant from tbl_enseignant e
  right join tbl_matiere m on m.id_enseignant = e.id;

/* matiere, enseignants et age */
select  m.nom as matiere, concat(e.prenom,' ',e.nom) as enseignant, YEAR(CURDATE()) - YEAR(e.date_naissance) as age_enseignant from tbl_enseignant e
  right join tbl_matiere m on m.id_enseignant = e.id;

/* Trouver le nom , le prenom, l'âge et les matières enseignées par le plus vieux des enseignants */
select  m.nom as matiere, concat(e.prenom,' ',e.nom) as enseignant, YEAR(CURDATE()) - YEAR(e.date_naissance) as age_enseignant from tbl_enseignant e
  right join tbl_matiere m on m.id_enseignant = e.id order by YEAR(CURDATE()) - YEAR(e.date_naissance) desc limit 1;




CREATE TABLE tbl_note (
  id_etudiant INT(5) NOT NULL,
  id_matiere INT(5) NOT NULL,
  note DECIMAL(4,2) NOT NULL,
  CONSTRAINT fk_etudiant FOREIGN KEY (id_etudiant) REFERENCES tbl_etudiant(id),
  CONSTRAINT fk_matiere FOREIGN KEY (id_matiere) REFERENCES tbl_matiere(id)
);
ALTER TABLE tbl_note ADD CONSTRAINT pk_etudiant_matiere PRIMARY KEY (id_etudiant, id_matiere);


INSERT INTO tbl_note(id_etudiant, id_matiere, note) VALUES
( 1,1,12),
( 1,2,14),
( 1,3,13.502),
( 1,4,15.12),
( 1,5,16.805),
( 1,6,9.5),
( 1,7,8.6),
( 1,8,11.5),
( 1,9,13),
( 1,10,10),

( 2,1,15),
( 2,2,14.21),
( 2,3,8.6),
( 2,4,16.5),
( 2,5,18.4),
( 2,6,5.9),
( 2,7,12.5),
( 2,8,15.2),
( 2,9,16),
( 2,10,13),

( 4,1,15),
( 4,2,17.10),
( 4,3,9),
( 4,4,10),
( 4,5,11.5),
( 4,6,15.9),
( 4,7,15.5),
( 4,8,16.2),
( 4,9,12),
( 4,10,11),

( 5,1,15),
( 5,2,17.10),
( 5,3,11),
( 5,4,16),
( 5,5,13.5),
( 5,6,9.9),
( 5,7,8.5),
( 5,8,16.2),
( 5,9,7),
( 5,10,19),

( 6,1,5),
( 6,2,12),
( 6,3,11),
( 6,4,14),
( 6,5,12.5),
( 6,6,15.9),
( 6,7,15.5),
( 6,8,5.2),
( 6,9,12),
( 6,10,10),

( 7,1,15),
( 7,2,17.10),
( 7,3,11.2),
( 7,4,14.5),
( 7,5,15.5),
( 7,6,12.9),
( 7,7,18.5),
( 7,8,16.2),
( 7,9,11),
( 7,10,15),

( 8,1,12.3),
( 8,2,13.10),
( 8,3,11),
( 8,4,14),
( 8,5,16.5),
( 8,6,15.9),
( 8,7,19.5),
( 8,8,16.2),
( 8,9,12),
( 8,10,18),

( 9,1,15),
( 9,2,17),
( 9,3,13),
( 9,4,13),
( 9,5,13.5),
( 9,6,14.9),
( 9,7,19.5),
( 9,8,16.2),
( 9,9,8),
( 9,10,9),

( 10,1,17),
( 10,2,16),
( 10,3,12),
( 10,4,14),
( 10,5,13.5),
( 10,6,15.9),
( 10,7,13.5),
( 10,8,11.2),
( 10,9,11),
( 10,10,15),

( 11,1,14),
( 11,2,13.5),
( 11,3,10.5),
( 11,4,11),
( 11,5,15),
( 11,6,14.5),
( 11,7,15.3),
( 11,8,15.2),
( 11,9,12),
( 11,10,11);

/* Lister les notes obtenues par l'étudiant Jules Dubois */
select * from tbl_note note
  inner join tbl_etudiant etudiant on note.id_etudiant = etudiant.id
  inner join tbl_matiere matiere on note.id_matiere = matiere.id
  where (etudiant.nom = 'Dubois') and (etudiant.prenom = 'Jules');

/* Nom et date de naissance des étudiants plus jeunes que l'étudiant Jules Dubois */
select concat(etudiant.prenom, ' ',etudiant.nom) as nom, DATE_FORMAT(etudiant.date_naissance,'%d/%m/%Y') as date_naissance from tbl_etudiant etudiant
  where etudiant.date_naissance > (select date_naissance from tbl_etudiant where (nom = 'Dubois') and (prenom = 'Jules'));

/* Lister la note obtenue par l'étudiant jules DUbois en ‘programmation’ */
select concat(etudiant.prenom, ' ',etudiant.nom) as nom, note.note as note, matiere.nom as matiere from tbl_note note
  inner join tbl_etudiant etudiant on note.id_etudiant = etudiant.id
  inner join tbl_matiere matiere on note.id_matiere = matiere.id
  where (etudiant.nom = 'Dubois') and (etudiant.prenom = 'Jules') and (matiere.nom = 'Programmation');

/* Trouver le nom , le prenom, l'âge et les matières enseignées par le plus vieux des enseignants */
select concat(enseignant.prenom, ' ',enseignant.nom) as nom, year(CURRENT_DATE) - year(enseignant.date_naissance) as age, matiere.nom as matiere from tbl_enseignant enseignant
  right join tbl_matiere matiere on matiere.id_enseignant = enseignant.id
  where enseignant.date_naissance = (select min(date_naissance) from tbl_enseignant);

/* Nom, prenom et date d’embauche des enseignants embauchés après ‘Martin’ */
select concat(tbl_enseignant.nom, ' ',tbl_enseignant.prenom) as nom, date_format(tbl_enseignant.date_embauche,'%d/%m/%Y') as date_embauche from tbl_enseignant
  where date_embauche > (select date_embauche from tbl_enseignant where nom = 'Martin');

/* Nom et note des étudiant ayant eu la moyenne dans une des matières enseignées par Pierre Bertrand */
select concat(tbl_etudiant.nom, ' ', tbl_etudiant.prenom) as etudiant, tbl_note.note as note, tbl_matiere.nom as matiere, concat(tbl_enseignant.nom, ' ', tbl_enseignant.prenom) as enseignant from tbl_note
  inner join tbl_etudiant on tbl_note.id_etudiant = tbl_etudiant.id
  inner join tbl_matiere on tbl_note.id_matiere = tbl_matiere.id
  inner join tbl_enseignant on tbl_matiere.id_enseignant = tbl_enseignant.id
  where (tbl_note.note >= 10 ) and (tbl_enseignant.nom = 'Bertrand') and (tbl_enseignant.prenom = 'Pierre');
