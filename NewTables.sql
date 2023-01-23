DROP DATABASE IF EXISTS Instituto;
CREATE DATABASE IF NOT EXISTS Instituto;
USE Instituto;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS Alumnos,
                     Asignaturas,
                     Profesores,
                     Instituto, 
                     Pupitres;

show databases;
USE	Instituto;
CREATE TABLE Alumnos (
    Alumn_id     INT             NOT NULL,
    Sig_id     INT             NOT NULL,
	Prof_id     INT             NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,   
    FOREIGN KEY (Sig_id)  REFERENCES Asignaturas (Sig_id)    ON DELETE CASCADE,
    FOREIGN KEY (Prof_id)  REFERENCES Profesores (Prof_id)    ON DELETE CASCADE,
    PRIMARY KEY (Alumn_id)
    
);
SELECT * FROM Alumnos;

CREATE TABLE Asignaturas (
   Sig_id         INT        	  NOT NULL,
   Name_sig   CHAR(10)            NOT NULL,
   PRIMARY KEY (Sig_id)
); 
SELECT * FROM Asignaturas;

CREATE TABLE Profesores (
	Prof_id       INT             NOT NULL,
   Sig_id     	  INT			  NOT NULL,
   Name_Prof      char(10),
   FOREIGN KEY (Sig_id)  REFERENCES Asignaturas (Sig_id)    ON DELETE CASCADE,
   PRIMARY KEY (Prof_id)
);
SELECT * FROM Profesores; 

CREATE TABLE Instituto (
   Name_Inst      char(10),
   Inst_id  	  INT 			  NOT NULL,
   PRIMARY KEY (Inst_id)
);
SELECT * FROM Instituto;
CREATE TABLE ClasesPart (
   Name_Clases    char(10),
   Clases_id   	  INT 			  NOT NULL,
   Inst_id  	  INT 			  NOT NULL,
   PRIMARY KEY (Clases_id),
   FOREIGN KEY (Inst_id)  REFERENCES Instituto (Inst_id)    ON DELETE CASCADE
);
SELECT * FROM ClasesPart;