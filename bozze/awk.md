AWK (bozza)
===

<!-- toc -->
Indice
======

<!-- /toc -->

## Modi di usare awk

```bash
awk '<comandi>' <nome file>               # Uso diretto di AWK su di un file

awk -f <script awk> <nome file>           # Uso di uno script AWK

<comando> <nome file> | awk '<comandi>'   # Utilizzato in combinazione con pipe
```

Esempio:

```bash
# contenuto del file saluto:
$ cat saluto.txt
Questo è un howto su AWK!

# contenuto del file script.awk
$ cat script.awk
#!/bin/awk -f

{print $0 }
```

```bash
$ awk '{print}' saluto.txt           # awk '<comandi>' <nome file> 
Questo è un howto su AWK!

$ awk -f script.awk saluto.txt       # awk -f <script awk> <nome file> 
Questo è un howto su AWK!

$ cat saluto.txt | awk '{print $0}'  # <comando> <nome file> | awk '<comandi>'  
Questo è un howto su AWK!
```


## Tipi di istruzioni

Le istruzioni che si possono dare con AWK ricadono nei seguenti casi:
* stampa: print <espressione>
* assegnazione di una variabile: <variabile> = <espressione>
* utilizzo della logica degli if, while, for


## Stampare a video il contenuto di un file  

```bash
awk '{print}' <nome file>
```

Esempio:

```bash
# file print
$ cat print.txt
Questa frase è letta da una print!

$ awk '{print }' print.txt
Questa frase è letta da una print!
```


### Come stampare le righe di un file

| variabile | cosa stampa a video |
| :---: | --- |
| $0 | stampa tutti i campi della riga |
| $1 | stampa il primo campo utile |
| $n | stampa l'ennesimo campo |

File di esempio utilizzato:

```bash
# saluto.txt
$ cat saluto.txt
Questo è un howto su AWK!
E serve a comprendere
come poterlo utilizzare al meglio!
Buon divertimento! XD
```


#### Stampare tutte le righe

Esempio:

```bash
$ awk '{print }' saluto.txt
Questo è un howto su AWK!
E serve a comprendere
come poterlo utilizzare al meglio!
Buon divertimento! XD
$
$ awk '{print $0}' saluto.txt
Questo è un howto su AWK!
E serve a comprendere
come poterlo utilizzare al meglio!
Buon divertimento! XD
```


#### Stampare solo le colonne che interessano

Esempio:

```bash
$ awk '{print $1}' saluto.txt
Questo
E
come
Buon
$
$ awk '{print $2}' saluto.txt
è
serve
poterlo
divertimento!
```

### Ordinamento delle colonne

Esempio:

```bash
$ awk '{print $1 $2 $3}' saluto.txt
Questoèun
Eservea
comepoterloutilizzare
Buondivertimento!XD
$
$ awk '{print $1 " " $2 " " $3}' saluto.txt
Questo è un
E serve a
come poterlo utilizzare
Buon divertimento! XD
$
$ awk '{print $3 $2 $1}' saluto.txt
unèQuesto
aserveE
utilizzarepoterlocome
XDdivertimento!Buon
$
$ awk '{print $3 " " $2 " " $1}' saluto.txt
un è Questo
a serve E
utilizzare poterlo come
XD divertimento! Buon
```


### Importanza di come si stampano le colonne

```bash
awk '{ print $<numero riga> $<numero riga> }'  # nell'output sono considerate
                                               # come un campo unico

awk '{ print $<numero riga>, $<numero riga> }' # nell'output sono considerate
                                               # come due campi separati 
```

Esempio:

```bash
$ awk -F ";" '{ print $1 $2 }' fs.txt
ab
de
$ awk -F ";" '{ print $1, $2 }' fs.txt
a b
d e
```


### Cambiare l'output di una colonna

```bash
'{$<numero riga>="nuovo valore"; print}' <nome file>
```

Esempio:

```bash
$ awk '{$0="Ops! Ho sovrascritto tutte le righe!"; print $0}' saluto.txt
Ops! Ho sovrascritto tutte le righe!
Ops! Ho sovrascritto tutte le righe!
Ops! Ho sovrascritto tutte le righe!
Ops! Ho sovrascritto tutte le righe!
$
$ awk '{$1="Ma cosa sto scrivendo?!"; print $0}' saluto.txt
Ma cosa sto scrivendo?! è un howto su AWK!
Ma cosa sto scrivendo?! serve a comprendere
Ma cosa sto scrivendo?! poterlo utilizzare al meglio!
Ma cosa sto scrivendo?! divertimento! XD
```


### Lunghezza di una colonna

```bash
awk '{length($<numero riga>)}' <nome file>
```

Esempio:

```bash
$ awk '{ print length($0) }' saluto.txt
26
22
34
21
$
$ awk '{ print "La riga: " $0 " è lunga: " length($0) " caratteri!" }' saluto.txt
La riga: Questo è un howto su AWK! è lunga: 26 caratteri!
La riga: E serve a comprendere  è lunga: 22 caratteri!
La riga: come poterlo utilizzare al meglio! è lunga: 34 caratteri!
La riga: Buon divertimento! XD è lunga: 21 caratteri!
```


## Variabili

Le variabili non devono essere nè dichiarate nè inizializzate.
Pensa a tutto AWK!


### BEGIN ed END

```bash
awk 'BEGIN {<espressione>} {<espressione>} END {<espressione>}' <nome file>
```

Esempio:

```bash
$ awk 'BEGIN{ print "Contenuto del file:\n "} { print $0 } END { print "\nFine lettura del file!" }' saluto.txt
Contenuto del file:

Questo è un howto su AWK!
E serve a comprendere
come poterlo utilizzare al meglio!
Buon divertimento! XD

Fine lettura del file!
```


### Nome del file che si sta leggendo

```bash
awk { print FILENAME } <nome file>
```

Esempio:

```bash
$ awk 'BEGIN {print "Sto leggendo il file..."} {print} END {print "File letto: " FILENAME}' saluto.txt
Sto leggendo il file...
Questo è un howto su AWK!
E serve a comprendere
come poterlo utilizzare al meglio!
Buon divertimento! XD
File letto: saluto.txt
```


### Separatore di campo interno al file

```bash
awk '{FS}'                  # di default è lo spazio

awk -F "<separatore" '{FS}' # invece dello spazio, 
                            # usa il separatore indicato
```

Esempio:

```bash
$ cat fs.txt
a;b;c
d;e;f
$
$ awk 'BEGIN {print "Separatore usato nel file: " FS} {print}' fs.txt
Separatore usato nel file: # In questo caso il separatore è lo spazio
a;b;c
d;e;f
$
$ awk -F ";" 'BEGIN {print "Separatore usato nel file: " FS} {print}' fs.txt
Separatore usato nel file: ; # In questo caso il separatore è il ;
a;b;c
d;e;f
$
$ awk '{print $0 }' fs.txt
a;b;c # In questo caso il separatore è lo spazio
d;e;f # quindi esiste solo $0 dato che il vero
      # separatore sarebbe il ;
$
$ awk -F ";" '{print $1 " " $2 " " $3}' fs.txt
a b c # Usando come separatore ;
d e f # ogni riga ha 3 elementi distinti!
```


### Numero di campi presenti in ogni riga nel file

```bash
awk '{NF}' <nome file> # Se non indicato diversamente, 
                       # per NF i campi sono suddivisi
                       # da uno spazio
```

Esempio:

```bash
$ cat fs.txt
a;b;c
d;e;f
$
$ awk '{print "Numero di campi trovati nella riga: "  NF }' fs.txt
Numero di campi trovati nella riga: 1 # ogni riga è composta
Numero di campi trovati nella riga: 1 # da un solo campo diviso
                                      # dallo spazio
                                      # 
$ awk -F ";" '{print "Numero di campi trovati nella riga: "  NF }' fs.txt
Numero di campi trovati nella riga: 3 # usando ; come separatore,
Numero di campi trovati nella riga: 3 # NF trova 3 campi per riga!
```


### Numero di righe in ogni file

```bash
awk '{NR}' <nome file> # stampa il numero di ogni riga
```

Esempio:

```bash
$ awk '{print NR}' fs.txt
1
2
$
$ awk '{print NR": " $0 }' fs.txt # Così è più chiaro! XD
1: a;b;c
2: d;e;f
```


### Separatore di campo in output

```bash
awk '{OFS="<separatore di campo>"}' <nome file> # Di default è
                                                # lo spazio il
                                                # separatore

awk -F "<separatore>" '{OFS="<separatore di campo>"}' <nome file> 
```

Esempio:

```bash
$ awk -F ";" 'BEGIN {OFS="-"} { print $1 $2}' fs.txt
ab # Ricordati che c'è differenza tra stampare
de # $1 $2 e $1,$2!
   # in questo caso, i due campi sono considerati
   # una sola riga e quindi OFS non serve
   # a nulla!

$ awk -F ";" 'BEGIN {OFS="-"} { print $1, $2}' fs.txt
a-b # Stampando $1, $2 ho i due campi separati
d-e # quindi qua l'OFS viene utilizzato
    # correttamente!


```


### Separatore di righe in output

```bash
awk '{ORS="<separatore di campo>"}' <nome file> # Di default è
                                                # \n (a capo)
                                                # il separatore
```

Esempio:

```bash
$ awk -F ";" 'BEGIN {ORS="----"} { print $0 } END {print "\n"}' fs.txt
a;b;c----d;e;f----
$
$ awk -F ";" 'BEGIN {ORS=""} { print $0 } END {print "\n"}' fs.txt
a;b;cd;e;f
```


## Operatori

### Operatori aritmetici

| Operatore | Sintassi |
|---|:-:|
| Addizione | '{a=<valore>; b=<valore>; print (a + b)}' | 
| Sottrazione | '{a=<valore>; b=<valore>; print (a - b)}' |
| Moltiplicazione| '{a=<valore>; b=<valore>; print (a * b)}' |
| Potenza | '{a=<valore>; b=<valore>; print (a ** b)}'|
| Divisione | '{a=<valore>; b=<valore>; print (a / b)}'|
| Modulo (cioè il resto della divisione) | '{a=<valore>; b=<valore>; print (a % b)}'|

Esempio:

```bash
$ awk BEGIN'{ a=1; b=2; c=a+b; print c }'
3
$
$ awk BEGIN'{ a=1; b=2; c=a-b; print c }'
-1
$
$ awk BEGIN'{ a=1; b=2; c=a*b; print c }'
2
$
$ awk BEGIN'{ a=1; b=2; c=a**b; print c }'
1
$
$ awk BEGIN'{ a=1; b=2; c=a/b; print c }'
0,5
$
$ awk BEGIN'{ a=1; b=2; c=a%b; print c }'
1
```

### Operatori di confronto

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| == | Uguaglianza. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a == b)}'|
| != | Disuguaglianza. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a != b)}' | 
| > | Maggiore di. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a > b)}' |
| >= | Maggiore o uguale a. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a >= b)}' |
| < | Minore di. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a < b)}' |
| <= | Minore o uguale a. Stampa 1 se vero, 0 se Falso | '{a=<valore>; b=<valore>; print (a <= b)}' |  

Esempio:

```bash
$ awk BEGIN'{ a=1; b=2; print (a==b) }'
0
$ awk BEGIN'{ a=1; b=1; print (a==b) }'
1
$ awk BEGIN'{ a=1; b=1; print (a!=b) }'
0
$ awk BEGIN'{ a=1; b=2; print (a!=b) }'
1
$ awk BEGIN'{ a=1; b=2; print (a>b) }'
0
$ awk BEGIN'{ a=1; b=1; print (a>b) }'
1
$ awk BEGIN'{ a=1; b=2; print (a<b) }'
0
$ awk BEGIN'{ a=2; b=2; print (a<b) }'
1
$ awk BEGIN'{ a=1; b=2; print (a>=b) }'
0
$ awk BEGIN'{ a=1; b=1; print (a>=b) }'
1
$ awk BEGIN'{ a=1; b=2; print (a<=b) }'
0
$ awk BEGIN'{ a=2; b=2; print (a<=b) }'
1
```



### Operatori logici  

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| && | |
| \|\| | |
| !(not) | |


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
  
