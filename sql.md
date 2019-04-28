SQL
====

<!-- toc -->
Indice
======
- [DDL(Data Definition Language)](#ddl-data-definition-language)
  * [GESTIONE DI UNA TABELLA](#gestione-di-una-tabella)
    + [Tipi di dati in una tabella](#tipi-di-dati-in-una-tabella)
    + [Creare una tabella](#creare-una-tabella)
    + [Modificare una tabella](#modificare-una-tabella)
      - [Aggiungere una colonna](#aggiungere-una-colonna)
      - [Cancellare una colonna](#cancellare-una-colonna)
    + [Cancellare il contenuto di una tabella](#cancellare-il-contenuto-di-una-tabella)
    + [Eliminare una tabella](#eliminare-una-tabella)
  * [INDICI](#indici)
    + [Creazione di un indice](#creazione-di-un-indice)
    + [Cancellazione di un indice](#cancellazione-di-un-indice)
  * [LA CHIAVE PRIMARIA](#la-chiave-primaria)
    + [Creare una chiave primaria (primary key)](#creare-una-chiave-primaria-primary-key)
  * [LA CHIAVE ESTERNA](#la-chiave-esterna)
    + [Creare una chiave esterna (foreign key)](#creare-una-chiave-esterna-foreign-key)
- [DML(Data Manipulation Language)](#dml-data-manipulation-language)
  * [Inserire dati in una tabella](#inserire-dati-in-una-tabella)
  * [Interrogare una tabella](#interrogare-una-tabella)
    + [Select](#select)
      - [Distinct](#distinct)
      - [Alias](#alias)
    + [Funzioni di aggregazione](#funzioni-di-aggregazione)
      - [Uguale](#uguale)
      - [Diverso](#diverso)
      - [Maggiore](#maggiore)
      - [Minore](#minore)
      - [Count](#count)
      - [Sum](#sum)
      - [Min](#min)
      - [Max](#max)
      - [Avg](#avg)
    + [Funzioni di ordinamento e raggruppamento](#funzioni-di-ordinamento-e-raggruppamento)
      - [Order by](#order-by)
      - [Group by](#group-by)
      - [Having](#having)
    + [Condizioni di ricerca](#condizioni-di-ricerca)
      - [AND](#and)
      - [OR](#or)
      - [LIKE](#like)
      - [BETWEEN](#between)
      - [IN](#in)
      - [NOT IN](#not-in)
      - [IS NULL](#is-null)
      - [IS NOT NULL](#is-not-null)
      - [EXISTS](#exists)
    + [Unione tra tabelle](#unione-tra-tabelle)
        * [Inner join](#inner-join)
        * [Left join](#left-join)
        * [Right join](#right-join)
        * [Full outer join](#full-outer-join)
      - [Union](#union)
        * [Variante ALL](#variante-all)
    + [Funzioni sulle stringhe](#funzioni-sulle-stringhe)
      - [Concatenazione](#concatenazione)
      - [Lunghezza stringa](#lunghezza-stringa)
      - [Lettere in maiuscolo](#lettere-in-maiuscolo)
      - [Lettere in minuscolo](#lettere-in-minuscolo)
      - [Eliminare gli spazi](#eliminare-gli-spazi)
        * [Eliminare gli spazi solo a sinistra](#eliminare-gli-spazi-solo-a-sinistra)
        * [Eliminare gli spazi solo a destra](#eliminare-gli-spazi-solo-a-destra)
      - [Rimpiazzare dei caratteri](#rimpiazzare-dei-caratteri)
      - [Estrarre dei caratteri](#estrarre-dei-caratteri)
    + [Funzione sulle date](#funzione-sulle-date)
      - [Data corrente](#data-corrente)
      - [Data di sistema (Oracle)](#data-di-sistema-oracle)
    + [Funzioni di conversione](#funzioni-di-conversione)
      - [Convertire una data in una stringa](#convertire-una-data-in-una-stringa)
      - [Convertire una stringa in una data](#convertire-una-stringa-in-una-data)
      - [Convertire una stringa in un numero](#convertire-una-stringa-in-un-numero)
    + [Funzioni avanzate](#funzioni-avanzate)
      - [Case](#case)
      - [Decode](#decode)
      - [Nvl](#nvl)
    + [Query annidate](#query-annidate)
  * [Aggiornare i dati in una tabella](#aggiornare-i-dati-in-una-tabella)
  * [Cancellare una riga da una tabella](#cancellare-una-riga-da-una-tabella)
- [DCL (Data Control Language)](#dcl-data-control-language)
  * [Dare privilegi sul database](#dare-privilegi-sul-database)
  * [Eliminare privilegi sul database](#eliminare-privilegi-sul-database)
- [TCL (transaction Control Language)](#tcl-transaction-control-language)
  * [Salvare le operazioni effettuate](#salvare-le-operazioni-effettuate)
  * [Ripristinare dalle operazione di modifica](#ripristinare-dalle-operazione-di-modifica)
<!-- /toc -->


Il database di esempio si trova [qui](https://github.com/glimardo/howto/blob/master/db_esempio.sql).  
Puoi testare gli esempi su <http://www.sqlfiddle.com/>.


# DDL(Data Definition Language)

Definizione della struttura di un database

## GESTIONE DI UNA TABELLA

### Tipi di dati in una tabella

I tipi di dati più utilizzati che puoi trovare in una tabella sono:

| Tipo di dato  | Descrizione |
| :-----------: | :-----------: |
| VARCHAR(n) | Carattere stringa di dimensioni massime n |
| BOOLEAN |  Puoi inserire solo true o false |
| INTEGER | Numerico intero |
| FLOAT | Numerico con virgola |
| DATE | Anno, mese e giorno|
| TIME | Ora, minuti, secondi |
| TIMESTAMP | Anno, mese, giorno, ora, minuti, secondi |


### Creare una tabella

```sql
CREATE TABLE nome_tabella (
Attributo1 tipo_attributo NULL/NOT NULL,
Attributo2 tipo_attributo NULL/NOT NULL,
AttributoN tipo_attributo NULL/NOT NULL
)
```

Esempio:

```sql
CREATE TABLE impiegato(
  matricola INT NOT NULL,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio FLOAT
)
;
```


### Modificare una tabella

#### Aggiungere una colonna

```sql
ALTER TABLE nome_tabella
  ADD Attributo tipo_attributo
```

Esempio:

```sql
ALTER TABLE impiegato
  ADD anno_di_nascita DATE
;
```

#### Cancellare una colonna

```sql
ALTER TABLE nome_tabella
  DROP COLUMN Attributo
```

Esempio:

```sql
ALTER TABLE impiegato
  DROP COLUMN anno_di_nascita
;
```


### Cancellare il contenuto di una tabella  

```sql
TRUNCATE TABLE nome_tabella
```

Esempio:

```sql
TRUNCATE TABLE impiegato
;
```

### Eliminare una tabella

```sql
DROP TABLE nome_tabella
```

Esempio:

```sql
DROP TABLE impiegato
;
```

## INDICI

### Creazione di un indice

```sql
CREATE UNIQUE INDEX nome_indice ON nome_tabella(attributo)
```

Esempio:

```sql
CREATE UNIQUE INDEX indice_impiegato ON impiegato(matricola);
```

### Cancellazione di un indice

```sql
DROP INDEX nome_indice ON nome_tabella
```

Esempio:

```sql
DROP INDEX indice_impiegato ON impiegato;
```


## LA CHIAVE PRIMARIA

### Creare una chiave primaria (primary key)

Se è formata da solo un attributo:

```sql
CREATE TABLE nome_tabella (
Attributo1 tipo_attributo PRIMARY KEY,
Attributo2 tipo_attributo NULL/NOT NULL,
AttributoN tipo_attributo NULL/NOT NULL
)
```

Esempio:

```sql
CREATE TABLE impiegato(
  matricola INT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio FLOAT
)
;
```

Se è formata da più attributi:

```sql
CREATE TABLE nome_tabella (
Attributo1 tipo_attributo NULL/NOT NULL,
Attributo2 tipo_attributo NULL/NOT NULL,
AttributoN tipo_attributo NULL/NOT NULL,
PRIMARY KEY(Attributo1, Attributo2)
)
```

Esempio:

```sql
CREATE TABLE impiegato(
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio FLOAT,
  PRIMARY KEY(nome, cognome)
)
;
```


## LA CHIAVE ESTERNA

### Creare una chiave esterna (foreign key)

```sql
CREATE TABLE nome_tabella (
Attributo1 tipo_attributo PRIMARY KEY,
Attributo2 tipo_attributo NULL/NOT NULL,
AttributoN tipo_attributo NULL/NOT NULL,
  FOREIGN KEY (AttributoN)
  REFERENCES nome_tabella2(AttributoN)
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
```

Esempio:

```sql
CREATE TABLE dipartimento(
  numero_dip INT PRIMARY KEY,
  nome_dip VARCHAR(20) NOT NULL
)
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
```


# DML(Data Manipulation Language)


## Inserire dati in una tabella

```sql
INSERT INTO nome_tabella (attributo1, attributo2, attributon)
VALUES (valore1, valore2, valoren)
```

Esempio:

```sql
INSERT INTO impiegato (matricola, nome, cognome, data_assunzione, stipendio)
VALUES (1234567890, "Peter", "Doe", "2001/03/04", 1500),
(0123456789, "Gian", "Doe", "200/02/03", 1000)
;
```

## Interrogare una tabella

### Select

```
Le interrogazioni alle tabelle sono sempre formate da tre clausole:
SELECT
FROM
WHERE

Il risultato dell'interrogazione (query) è:  
- un prodotto cartesiano delle tabelle presenti nella clausola FROM 
- che soddisfano le condizioni presenti nella clausola WHERE 
- e per ogni riga trovata, vengono valutate le espressioni 
  presenti nella clausola SELECT
```


```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE condizioni
```

Esempio base:

```sql
SELECT *       -- seleziono tutte le colonne presenti 
FROM impiegato -- nella tabella impiegato
```

Esempio con clausola WHERE:

```sql
SELECT *
FROM impiegato
WHERE stipendio > 900
```

#### Distinct

```
Distinct permette di rimuovere i valori duplicati dall'interrogazione
```

```sql
SELECT DISTINCT(attributo)
FROM nome_tabella
[WHERE condizioni]
```

Esempio:

```sql
SELECT DISTINCT(cognome)
FROM impiegato
```

#### Alias

```
Alias permette di dare un nome a piacere agli attributi
```

```sql
SELECT attributo AS nuovo_nome_attributo
FROM nome_tabella
```

Esempio:

```sql
SELECT nome AS nome_impiegato
FROM impiegato
```

### Funzioni di aggregazione

#### Uguale

```sql
SELECT attributo 
FROM nome_tabella
WHERE attributo2 = condizione
```

Esempio:

```sql
SELECT nome 
FROM impiegato
WHERE stipendio = 1000
```

#### Diverso

```sql
SELECT attributo 
FROM nome_tabella
WHERE attributo2 <> condizione
```

Esempio:

```sql
SELECT nome 
FROM impiegato
WHERE stipendio <> 1000
```

#### Maggiore

```sql
SELECT attributo 
FROM nome_tabella
WHERE attributo2 > condizione
```

Esempio:

```sql
SELECT nome 
FROM impiegato
WHERE stipendio > 1000
```

#### Minore

```sql
SELECT attributo 
FROM nome_tabella
WHERE attributo2 < condizione
```

Esempio:

```sql
SELECT nome 
FROM impiegato
WHERE stipendio < 1000
```

#### Count

```
Count conta il numero di righe di una determinata espressione
```

```sql
SELECT COUNT(attributo)
FROM nome_tabella
WHERE condizione
```

Esempio:

```sql
SELECT COUNT(matricola) AS totale_impiegati
FROM impiegato
```

#### Sum

```sql
SELECT SUM(Attributo)
FROM nome_tabella
WHERE condizione
```

Esempio:

```sql
SELECT SUM(stipendio) AS totale_stipendi
FROM impiegato
```

#### Min

```sql
SELECT MIN(Attributo)
FROM nome_tabella
WHERE condizione
```

Esempio:

```sql
SELECT MIN(stipendio)
FROM impiegato
```

#### Max

```sql
SELECT MAX(Attributo)
FROM nome_tabella
WHERE condizione
```

Esempio:

```sql
SELECT MAX(stipendio)
FROM impiegato
```

#### Avg

```sql
SELECT AVG(Attributo)
FROM nome_tabella
WHERE condizione
```

Esempio:

```sql
SELECT AVG(stipendio)
FROM impiegato
```

### Funzioni di ordinamento e raggruppamento

#### Order by

```
ORDER BY permette di scegliere l'ordinamento crescente/decrescente 
in base ad una colonna scelta
```

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE condizione
ORDER BY attributom [ASC o DESC]
```

Esempio:

```sql
SELECT *
FROM impiegato
ORDER BY nome
;
```

#### Group by

```sql
SELECT attributo1, attributo2
FROM nome_tabella
WHERE condizione
GROUP BY attributo1
```

Esempio:

```sql
SELECT SUM(stipendio), data_assunzione
FROM impiegato
GROUP BY data_assunzione
;
```

#### Having

```sql
SELECT attributo1, attributo2
FROM nome_tabella
WHERE condizione
GROUP BY attributo1
HAVING [espressione]
```

Esempio:

```sql
SELECT SUM(stipendio), data_assunzione
FROM impiegato
GROUP BY data_assunzione
HAVING MIN(stipendio) > 1500
;
```

### Condizioni di ricerca

#### AND

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE <condizione 1> AND <condizione 2>
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE cognome = "Doe" AND stipendio > 1000
;
```

#### OR

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE <condizione 1> OR <condizione 2>
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio = 1000 OR stipendio = 2000
;
```

#### LIKE

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 LIKE '%condizione%'
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE nome like '%n'
;
```

#### BETWEEN

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 BETWEEN <valore minimo> AND <valore massimo>
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio BETWEEN 1000 AND 1500
;
```

#### IN

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 IN
(
<elenco valori>
)
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio IN
(
1500,
2000
)
;
```

#### NOT IN

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 NOT IN
(
<elenco valori>
)
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio NOT IN
(
1500,
2000
)
;
```

#### IS NULL

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 IS NULL
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio IS NULL
;
```

#### IS NOT NULL

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE attributo1 IS NOT NULL
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE stipendio IS NOT NULL
;
```

#### EXISTS

```sql
SELECT attributo1, attributo2, attributon
FROM nome_tabella
WHERE EXISTS
(
SELECT *
FROM nome_tabella2
WHERE nome_tabella.attributo = nome_tabella2.attributo
)
```

Esempio:

```sql
SELECT *
FROM impiegato
WHERE EXISTS
(
 SELECT *
 FROM dipartimento
 WHERE impiegato.numero_dip = dipartimento.numero_dip
)
;
```


### Unione tra tabelle


##### Inner join

```
Si prendono in considerazione solo i valori in comune tra due tabelle
```

```sql
SELECT *
FROM tabellaA as A
JOIN tabellaB as B ON A.attributo = B.attributo
```

Esempio:

```sql
SELECT *
FROM impiegato as I
JOIN busta_paga  as P ON I.matricola = P.matricola
```

##### Left join

```
Si prendono in considerazione solo i valori della prima tabella a sinistra 
più i valori in comune con la tabella a destra
```

```sql
SELECT *
FROM tabellaA as A
LEFT JOIN tabellaB as B ON A.attributo = B.attributo
```

Esempio:

```sql
SELECT *
FROM impiegato as I
LEFT JOIN dipartimento  as D ON I.matricola = D.matricola
```

##### Right join

```
Si prendono in considerazione solo i valori della seconda tabella 
(la prima a destra) più i valori in comune con la prima tabella
(la prima a sinistra)
```

```sql
SELECT *
FROM tabellaA as A
RIGHT JOIN tabellaB as B ON A.attributo = B.attributo
```

Esempio:

```sql
SELECT *
FROM impiegato as I
RIGHT JOIN dipartimento as D ON I.matricola = D.matricola
```

##### Full outer join

```
Si prendono in considerazione tutti i valori presenti su entrambe le tabelle
```

```sql
SELECT *
FROM tabellaA as A
FULL OUTER JOIN tabellaB as B ON A.attributo = B.attributo
```

Esempio:

```sql
SELECT *
FROM impiegato as I
FULL OUTER JOIN dipartimento as D ON I.matricola = D.matricola
```

#### Union

```
Unisce il risultato di due query aventi gli stessi campi nella clausola SELECT e ne rimuove i duplicati
```

```sql
SELECT attributo1, attributo2
FROM tabellaA
[WHERE condizione]

UNION 

SELECT attributo1, attributo2
FROM tabellaB
[WHERE condizione]

```

Esempio:

```sql
SELECT nome, cognome
FROM impiegato

UNION

SELECT nome, cognome
FROM dirigente
```

##### Variante ALL

```
Unisce il risultato di due query aventi gli stessi campi nella clausola SELECT e non rimuove nessuna riga duplicata
```

```sql
SELECT attributo1, attributo2
FROM tabellaA
[WHERE condizione]

UNION ALL

SELECT attributo1, attributo2
FROM tabellaB
[WHERE condizione]

```

Esempio:

```sql
SELECT nome, cognome
FROM impiegato

UNION ALL

SELECT nome, cognome
FROM dirigente
```


### Funzioni sulle stringhe

#### Concatenazione

```
Concatena più stringhe in una sola
```

```sql
SELECT CONCAT(attributo1, attributo2)
FROM nome_tabella
;
```

oppure in Oracle:

```sql
SELECT attributo1 || attributo2
FROM nome_tabella
;
```

Esempio:

```sql
SELECT CONCAT(nome, ' ', cognome) AS impiegato
FROM impiegato
;
```

Output:

```
impiegato
Gian Doe
John Doe
Peter Doe
Marc Doe
```


#### Lunghezza stringa

```sql
SELECT LENGTH(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT LENGTH(nome)
FROM impiegato
;
```

#### Lettere in maiuscolo

```sql
SELECT UPPER(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT UPPER(nome)
FROM impiegato
;
```

#### Lettere in minuscolo

```sql
SELECT LOWER(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT LOWER(nome)
FROM impiegato
;
```

#### Eliminare gli spazi

```sql
SELECT TRIM(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT TRIM(nome)
FROM impiegato
;
```

##### Eliminare gli spazi solo a sinistra

```sql
SELECT LTRIM(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT LTRIM(nome)
FROM impiegato
;
```

##### Eliminare gli spazi solo a destra

```sql
SELECT RTRIM(attributo)
FROM nome_tabella
```

Esempio:

```sql
SELECT RTRIM(nome)
FROM impiegato
;
```


#### Rimpiazzare dei caratteri

```sql
SELECT REPLACE(attributo, valore attributo, nuovo valore)
FROM nome_tabella
```

Esempio:

```sql
SELECT
nome
, REPLACE(stipendio, 1000, 3000) AS nuovo_stipendio
FROM impiegato
;

SELECT
nome
, REPLACE(cognome, "oe", "urant") AS nuovo_stipendio
FROM impiegato
;
```

#### Estrarre dei caratteri

```sql
SELECT SUBSTR(attributo
              , posizione di partenza
              , numero di caratteri da estrarre da questa posizione)
FROM nome_tabella
```

Esempio:

```sql
SELECT
nome
, cognome
, data_assunzione
, SUBSTR(data_assunzione,1,4) AS anno_di_assunzione
FROM impiegato
;
```

### Funzione sulle date

#### Data corrente

```sql
SELECT
CURRENT_DATE 
FROM dual
;
```

Esempio:

```sql
SELECT
CURRENT_DATE 
FROM dual
;
```

#### Data di sistema (Oracle)

```sql
SELECT SYSDATE
FROM dual
```

Esempio:

```sql
SELECT
*
FROM impiegato
WHERE data_assunzione < SYSDATE
;
```


### Funzioni di conversione


#### Convertire una data in una stringa

Oracle 

```sql
SELECT
TO_CHAR(attributo data, 'DD-MM-YYYY')
FROM nome_tabella
;
```

```
YYYY  : Anno
MM    : Mese
DD    : Giorno
```

Esempio:

```sql
SELECT
TO_CHAR(data_assunzione, 'DD-MM-YYYY') AS nuova_data
FROM impiegato
;
```

MySQL

```sql
SELECT
DATE_FORMAT(attributo data, '%D-%M-%Y')
FROM nome_tabella
;
```

```
%Y  : Anno
%M  : Mese
%D  : Giorno
```

Esempio:

```sql
SELECT
DATE_FORMAT(data_assunzione, '%D-%M-%Y') AS nuova_data
FROM impiegato
;
```

#### Convertire una stringa in una data

Oracle

```sql
SELECT TO_DATE(<stringa in formato data>, 'YYYY-MM-DD')
FROM DUAL
```

Esempio:

```sql
SELECT TO_DATE('2019-05-01', 'YYYY-MM-DD')
FROM DUAL
```

MySQL

```sql
SELECT STR_TO_DATE('2019-05-01','%Y-%m-%d');
```

Esempio:

```sql
SELECT STR_TO_DATE('2019-05-01','%Y-%m-%d');
```

#### Convertire una stringa in un numero

Oracle

```sql
SELECT TO_NUMBER(<numbero in formato stringa>, '99') # Senza decimali
FROM dual

SELECT TO_NUMBER(<numbero in formato stringa>, '99.99') # Con due decimali
FROM dual
```

Esempio:

```sql
SELECT TO_NUMBER('100', '999') # Senza decimali
FROM dual

SELECT TO_NUMBER('100.50', '99.99') # Con due decimali
FROM dual
```


### Funzioni avanzate

#### Case


```sql
SELECT 
attributo
, CASE WHEN <condizione> THEN <valore>
  ELSE <altro valore>
END <nome nuovo attributo>
FROM nome_tabella
;
```

Esempio:

```sql
SELECT 
nome
, cognome
, CASE WHEN stipendio < 1500 THEN 'chiedere aumento!'
  ELSE ''
END consiglio
FROM impiegato
;
```

#### Decode

Oracle 

```sql
SELECT 
attributo1
, DECODE(attributo2, valore1, <nuovo valore>,
                   , valore2, <nuovo valore>) AS <attributom>
FROM nome_tabella
;
```

Esempio:

```sql
SELECT 
nome
, cognome
, DECODE(stipendio, 1000, 'chiedi aumento', 1500, 'ok') AS consiglio
FROM impiegato
;
```

MySQL

```
Vedi la sezione CASE
```


#### Nvl

Oracle

```sql
SELECT NVL(attributo, <valore alternativo al null>)
FROM nome_tabella
```

Esempio:

```sql
SELECT 
nome
, cognome
,NVL(stipendio,0)
FROM impiegato
;
```

MySQL

```sql
SELECT IFNULL(attributo, <valore alternativo al null>)
FROM nome_tabella
```

Esempio:

```sql
SELECT 
nome
, cognome
, IFNULL(stipendio,0)
FROM impiegato
;
```

### Query annidate

```sql
SELECT attributo,
(
    SELECT attributo2
    FROM tabellaB
    WHERE tabellaA.attributo = tabellaB.attributo
) attributo2
FROM tabellaA
```

Esempio:

```sql
SELECT 
I.nome
, I.cognome
, (SELECT D.nome_dip
   FROM dipartimento AS D
   WHERE D.numero_dip = I.numero_dip) dip
FROM impiegato AS I
;
```


## Aggiornare i dati in una tabella

```sql
UPDATE nome_tabella
SET attributo1 = <nuovo valore>,
    attributo2 = <nuovo valore>
WHERE condizione # NON DIMENTARE MAI LA CONDIZIONE WHERE!
```

```
Se l'aggiornamento è corretto, allora si può lanciare l'istruzione:
COMMIT;

Se l'aggiornamento non è corretto, si può ancora tornare al valore originale
lanciando l'istruzione:
ROLLBACK;

Ricorda: dopo aver effettuato il commit, non si torna più indietro!
```

Esempio:

```sql
UPDATE impiegato
SET stipendio = 2500
WHERE matricola = 123456789
;
COMMIT;

-- Verifica dell'update
SELECT *
FROM impiegato
WHERE matricola = 123456789
;
```


## Cancellare una riga da una tabella

```sql
DELETE FROM nome_tabella
WHERE condizione # NON DIMENTARE MAI LA CONDIZIONE WHERE!
```

```
Se la cancellazione della riga è corretta, allora si può lanciare l'istruzione:
COMMIT;

Se la cancellazione della riga non è corretta, si può ancora tornare al valore originale
lanciando l'istruzione:
ROLLBACK;

Ricorda: dopo aver effettuato il commit, non si torna più indietro!
```

Esempio:

```sql
DELETE FROM impiegato
WHERE matricola = 123456789
;
COMMIT;

-- Verifica della delete: nessuna riga da estrarre
SELECT *
FROM impiegato
WHERE matricola = 123456789
;
```


# DCL (Data Control Language)

Dare o togliere dei privilegi sugli oggetti del database.

## Dare privilegi sul database

```sql
GRANT privilegio ON oggetto TO utente;
```

Privilegi utili che si possono dare:  

| Privilegio  | Descrizione |
| :-----------: | :-----------: |
| SELECT | L'utente può effettuare le SELECT sulla tabella |
| UPDATE | L'utente può effettuare degli aggiornamenti sulla tabella |
| DELETE | L'utente può cancellare dei dati dalla tabella |
| INSERT | L'utente può aggiungere dei dati alla tabella|
| ALTER | L'utente può cambiare la definizione di una tabella |
| INDEX | L'utente può creare degli indici |
| ALL | L'utente ha qualsiasi privilegio sulla tabella|


Esempio:

```sql
GRANT SELECT, UPDATE, DELETE, INSERT ON impiegato TO giandoe;
```

## Eliminare privilegi sul database

```sql
REVOKE privilegio ON oggetto TO utente;
```

Privilegi utili che si possono togliere:  

| Privilegio  | Descrizione |
| :-----------: | :-----------: |
| SELECT | L'utente può effettuare le SELECT sulla tabella |
| UPDATE | L'utente può effettuare degli aggiornamenti sulla tabella |
| DELETE | L'utente può cancellare dei dati dalla tabella |
| INSERT | L'utente può aggiungere dei dati alla tabella|
| ALTER | L'utente può cambiare la definizione di una tabella |
| INDEX | L'utente può creare degli indici |
| ALL | L'utente ha qualsiasi privilegio sulla tabella|

Esempio:

```sql
REVOKE UPDATE, DELETE, INSERT ON impiegato TO giandoe;
```


# TCL (transaction Control Language)

Gestione delle transazioni effettuate.

## Salvare le operazioni effettuate

```sql
COMMIT;
```


## Ripristinare dalle operazione di modifica

```sql
ROLLBACK;
```