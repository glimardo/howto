BASH (molto bozza)
====

<!-- toc -- >
Indice
======

<!-- /toc -->

# I FONDAMENTALI

## Man

```bash
man comando
```

Esempio:

```bash
$ man echo
ECHO(1)                                             User Commands                                             ECHO(1)

NAME
       echo - display a line of text

SYNOPSIS
       echo [SHORT-OPTION]... [STRING]...
       echo LONG-OPTION
[...]
```

## Echo

```bash
echo comando
```

Esempio:

```bash
$ echo "Questo è un comando!"

# Output
Questo è un comando!
```

## Caratteri di escape più utili

| Comando  | Significato |
| :---: | :---: |
| \n | a capo |
| \t | tabulazione |
| \" | Carattere di escape \ per mantenere in output il doppio apice |

Esempio:

```bash
$ printf "Prima riga\nSeconda riga a capo\n"

# Output
Prima riga
Seconda riga a capo
```

```bash
$ printf "Prima colonna\tSeconda colonna\tTerza colonna\n"

# Output
Prima colonna   Seconda colonna Terza colonna
```

```bash
$ echo "\"Questa frase mantiene i doppi apici in output\""
"Questa frase mantiene i doppi apici in output"
```


## Separatore di comando

;

## Quoting parziale

Doppio apice

## Quoting totale

Apice singolo

## Escape

\

## Carattere jolly

*

## Sostituzione dell'istruzione

variabile = `istruzione`

## Storico dei comandi utilzzati

| Comando  | Significato |
| :---: | :---: |
| history |  |
| !! |  | 
| !comando |  |
| !?comando? |  |


## Stream

### Pipeline

#### La filosofia della pipeline

### Pipe

|

### Reindirizzare l'output

>

>>

&>

&>>

&1 stdout
&2 stderr
&0 stdin

>/dev/null

### Reindirizzare l'input

<





## Gestione delle cartelle

### Visualizzare il path della cartella in uso

pwd

### Visualizzare il contenuto  di una cartella

ls 
-l
-a
-r
-t
-1

### Spostarsi tra cartelle

cd

### Spostarsi nella cartella precedente

cd -

### Creare una cartella

mkdir

#### Creare una cartella con relative sottocartelle

mkdir -p

### Cancellare una cartella

rmdir


## Gestione dei file

### Creare un file

touch

### Sapere il tipo di file

file 

### copiare un file

cp

### muovere o rinominare un file

mv

### cancellare un file

rm

### Cercare un file

find

-type -f  
-type -d

## Qualcosa

### la data

date

### Cat

cat

### cut

cut

### Split

split

### Verificare se un sistema è su

ping

## Filtri

### wc

wc

### head

head

### tail

tail

### tee

### sort

sort

### uniq

uniq

### Cercare del testo dentro dei file

grep


## Paginatori

### more

more

### less

less


## Gestire un formato zip

### comprimere dei file
gzip

### decomprimere un file zip
gunzip


## Gestire un archivio tar.gz

### Comprimere dei file in un archivio

tar -cf nome_archivio.tar

tar -cfz

### Aggiungere dei file ad un archivio già esistente

tar -r

### Decomprimere un archivio

tar -xf


## Operatori di controllo

### Eseguire un comando alla volta sequenzialmente

;;

### Operatore logico and

&&

Il comando2 viene eseguito solo se comando1 è stato eseguito con successo

### Operatore logico or

||

Il comando2 viene eseguito solo se comando1 è stato eseguito senza successo

## Informazioni sull'ambiente in uso

uname -a
uname -o
uname -m
uname -n
uname -s
uname -r

## Visualizzare lo spazio utilizzato nel disco

### du

du

### df

df

## Gestione dei permessi sui file

### Visualizzare l'utente in uso

whoami

### Visualizzare il gruppo a cui appartiene l'utente

groups

### Cambiare utente

su nomeutente

### Cambiare i permessi sui file

chmod


## Scripting

### Shebang

#!

### Commenti

#

### Variabili

#### Visualizzare il contenuto di una variabile

$variabile

echo $variabile


### Eseguire uno script

#### Permessi di esecuzione

chmod +x
chmod 755

#### Lanciare uno script

./
sh 

### Leggere un input

read

### Passaggio di parametri

$0

### Stato di uscita dallo script

Ogni comando ha uno stato di uscita:  

| Stato di uscita  | Significato |
| :---: | :---: |
| 0 | comando eseguito correttamente |
| numero diverso da 0 | codice dell'errore |

```bash
#!/bin/bash

<istruzioni>

exit $? # come stato indicherà quello
        # dell'ultimo comando eseguito
        # exit 0 indica convenzionalmente
        # che lo script è terminato con
        # successo

```

Esempio:

```bash
#!/bin/bash

```

### La logica

#### Gli operatori

##### Operatori aritmetici

##### Operatori di confronto

##### Operatori binari

#### L'istruzione if

```bash
if [condizione]
then
   <istruzioni>
else
   <altre istruzioni>
fi
```

Esempio:

```bash
#!/bin/bash

a=2
b=3

printf "Confronto se $a è maggiore o uguale a $b.\nValore di a: $a\nValore di b: $b \n"

if [ $a -gt $b ]
then
   echo "Qualcosa non funziona!"
else
  echo "Difficile che $a sia maggiore o uguale a $b!"
fi
```

Output:

```bash
Confronto se 2 è maggiore o uguale a 3.
Valore di a: 2
Valore di b: 3
Difficile che 2 sia maggiore o uguale a 3!
```

      
##### Elif

```bash
if [condizione]
then
   <istruzioni>
elif [altra condizione]
then
   <istruzioni>
else
   <istruzioni predefinite>

fi
```  

Esempio:

```bash
#!/bin/bash

a=3
b=3

printf "Confronto se $a è maggiore o uguale a $b.\nValore di a: $a\nValore di b: $b \n"

if [ $a -gt $b ]
  then
     echo "Qualcosa non funziona!"
  elif [ $a -eq $b ]
    then
      echo "$a è uguale a $b!"
  else
    echo "Difficile che $a sia maggiore o uguale a $b!"
fi
```


Output:

```bash
Confronto se 3 è maggiore o uguale a 3.
Valore di a: 3
Valore di b: 3
3 è uguale a 3!
```

#### L'istruzione if su di una riga

```bash
if [condizione]; then ; else ; fi
```  

Esempio:

```bash
$ a=2; b=3; if [ $a -gt $b ]; then echo "Qualcosa non funziona!"; else echo "Difficile che $a sia maggiore o uguale a $b!"; fi
```

Output:

```bash
Difficile che 2 sia maggiore o uguale a 3!
```


#### Il ciclo for

for <variabile> in <lista>;
do
   <istruzioni>
done


#### Case

Case <variabile> in
valore1) <istruzione>;;
valoren) <istruzione>;;
*) <istruzione>;;
esac


#### Il ciclo while

while: # equivale a while true
do
    <istruzioni>
done  
   
##### Ciclo infinito
   
while [condizione]
do
    <istruzioni>
done  
   
#### Il ciclo until

until [condizione]
do
    <istruzioni>
done  
