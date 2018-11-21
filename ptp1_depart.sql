CREATE DATABASE p2p_blog CHARACTER SET 'utf8';
USE p2p_blog;

CREATE TABLE utilisateur (
	id INT(5) UNSIGNED AUTO_INCREMENT,
	pseudo VARCHAR(150) NOT NULL,
	email VARCHAR(150) NOT NULL,
	mot_de_passe VARCHAR(255) NOT NULL,
	CONSTRAINT pk_utilisateur PRIMARY KEY(id)
)

CREATE TABLE article (
	id INT(5) UNSIGNED AUTO_INCREMENT,
	titre VARCHAR(255) NOT NULL,
	texte VARCHAR(255) NOT NULL,
	resume VARCHAR(255) NOT NULL,
	auteur INT(5) NOT NULL,
	date_publication DATE NOT NULL,
	CONSTRAINT pk_article PRIMARY KEY(id),
	CONSTRAINT fk_auteur FOREIGN KEY(auteur) REFERENCES utilisateur(id)
)

CREATE TABLE commentaire (
	id INT(5) UNSIGNED AUTO_INCREMENT,
	commentaire TEXT NOT NULL,
	auteur INT(5) NOT NULL,
	date_publication DATE NOT NULL,

)


CREATE TABLE categorie (
	id INT UNSIGNED AUTO_INCREMENT,
	nom VARCHAR(150) NOT NULL,
	description TEXT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE categorie_article (
	categorie_id INT UNSIGNED,
	article_id INT UNSIGNED,
	PRIMARY KEY (categorie_id, article_id)
);
