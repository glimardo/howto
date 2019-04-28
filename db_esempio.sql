CREATE TABLE dipartimento(
  numero_dip INT PRIMARY KEY,
  nome_dip VARCHAR(20) NOT NULL
);


INSERT INTO dipartimento (numero_dip, nome_dip)
VALUES (1, 'Ufficio acquisti'),
(2, 'Ufficio marketing')
;

CREATE TABLE impiegato(
  matricola INT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio FLOAT,
  numero_dip INT,
  FOREIGN KEY (numero_dip)
  REFERENCES dipartimento(numero_dip)
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
;

INSERT INTO impiegato (matricola, nome, cognome, data_assunzione, stipendio, numero_dip)
VALUES (1234567890, "Peter", "Doe", "2001/03/04", 1000, 1),
(0123456789, "  Gian  ", "Doe", "2001/03/04", 1000, 2),
(1234590678, "Marc  ", "Doe", "2002/03/04", 1500, 2),
(1234509876, "  John", "Doe", "2003/03/04", 2000, 1),
(1256000000, "Luis", "Doe", "2019/03/04",NULL, 1)
;
