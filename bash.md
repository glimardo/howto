BASH (bozza)
====

<!-- toc -- >
Indice
======

<!-- /toc -->

# I FONDAMENTALI

## Man

man comando


## Echo

echo

## Caratteri di escape più utili

\n
\r
\t

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

## Visualizzare il contenuto di una variabile

$variabile

## Sostituzione dell'istruzione

variabile = `istruzione`

## History

history
!!
!comando
!?comando?

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

### La logica

#### Gli operatori

##### Operatori aritmetici

##### Operatori di confronto

##### Operatori binari

#### L'istruzione if

if [condizione]
then
   <istruzioni>
else
   <altre istruzioni>
fi
      
##### Elif

if [condizione]
then
   <istruzioni>
elif [altra condizione]
else
   <altre istruzioni>
fi
     
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
