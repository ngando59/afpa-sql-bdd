

CREATE TABLE tbl_etudiant (
	 id INT(5) AUTO_INCREMENT,
	 nom VARCHAR(50),
	 prenom VARCHAR(50),
	 id_formation INT(5),
	 CONSTRAINT pk_etudiant Primary Key(ID),
	 CONSTRAINT fk_etudiant_formation foreign key (id_formation) REFERENCES tbl_formation(id)
 );

CREATE TABLE tbl_formation (
	id INT(5) AUTO_INCREMENT,
	nom VARCHAR(50),
	date_debut date,
	CONSTRAINT pk_formation Primary Key(ID)
);

INSERT INTO tbl_etudiant(nom, prenom) VALUES
('Ngolo','Kanté');

INSERT INTO tbl_etudiant(nom, prenom, id_formation) VALUES
('Drogba','Didier', NULL);
