-- Étape 1 : Création de la base de données
CREATE DATABASE CentreFormation;
USE CentreFormation;

-- Étape 2 : Création des tables

-- Table Etudiant
CREATE TABLE Etudiant (
    numEtud INT PRIMARY KEY,
    nomEtud VARCHAR(50) NOT NULL,
    prenomEtud VARCHAR(50),
    adresseEtud VARCHAR(100),
    villeEtud VARCHAR(50),
    niveauEtud VARCHAR(10)
);

-- Table Session
CREATE TABLE Session (
    codeSession INT PRIMARY KEY,
    nomSession VARCHAR(50),
    dateDebut DATE NOT NULL,
    dateFin DATE NOT NULL,
    CONSTRAINT chk_date CHECK (dateFin > dateDebut) -- Contrainte CHECK pour dateFin > dateDebut
);

-- Table Inscription (relation entre Etudiant et Session avec typeCours)
CREATE TABLE Inscription (
    numEtud INT,
    codeSession INT,
    typeCours VARCHAR(20) NOT NULL, -- Contrainte NOT NULL
    PRIMARY KEY (numEtud, codeSession),
    FOREIGN KEY (numEtud) REFERENCES Etudiant(numEtud),
    FOREIGN KEY (codeSession) REFERENCES Session(codeSession)
);

-- Table Specialite
CREATE TABLE Specialite (
    codeSpec INT PRIMARY KEY,
    nomSpec VARCHAR(50) NOT NULL,
    descSpec TEXT,
    Active TINYINT(1) DEFAULT 1 -- Colonne Active pour indiquer l'état de la spécialité (1 = active, 0 = inactive)
);

-- Table Formation
CREATE TABLE Formation (
    codeForm INT PRIMARY KEY,
    nomForm VARCHAR(50) NOT NULL,
    dureeForm INT,
    prixForm DECIMAL(10, 2)
);

-- Table Appartient (relation entre Formation et Specialite)
CREATE TABLE Appartient (
    codeForm INT,
    codeSpec INT,
    PRIMARY KEY (codeForm, codeSpec),
    FOREIGN KEY (codeForm) REFERENCES Formation(codeForm),
    FOREIGN KEY (codeSpec) REFERENCES Specialite(codeSpec)
);

-- Table Concerne (relation entre Session et Formation)
CREATE TABLE Concerne (
    codeSession INT,
    codeForm INT,
    PRIMARY KEY (codeSession, codeForm),
    FOREIGN KEY (codeSession) REFERENCES Session(codeSession),
    FOREIGN KEY (codeForm) REFERENCES Formation(codeForm)
);

-- Script terminé
