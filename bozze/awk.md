AWK (bozza)
===

<!-- toc -->
Indice
======

<!-- /toc -->


## Print

awk '{print}'

### tutte le righe

$0


### solo le colonne che interessano

$n

### Ordinamento delle colonne


### Lunghezza di una colonna

'length($0)'


## Variabili

### Numero di argomenti

ARGC
tips: il primo valore passato è awk!

### Nome del file

FILENAME

### Separatore di campo interno

FS

### Numero di campi

NS

### Numero di righe

NR

### Separatore di campo in output

OFS

### Separatore di righe in output

ORS

### Separatore di righe

RS

default: \n

## Operatori

### + - * / % **

### ++a --a b++ b--

### == != < <= > >=

### && || !(not)

### concatenare
a
b
c = a b
print c

## Array

### Creare un array  

a[0] = "John";

### Cancellare un array

delete a[0]

### Creare un array multidimensionale

a["0,0"] = "John"


## Logica

### if

if (<condizione>)  <istruzini>; 
  
### if else

if (<condizione>) <istruzini>;  else <istruzioni>


### for

for (inizializzazione; condizione; incremento/decremento) <istruzioni>
  
### while

while (condizione) {<istruzioni>}
  

### break


### continue


### exit

## Funzioni

function <nome funzione> (<parametro 1>< parametro n>)
  {
    <istruzioni>
  }
  
