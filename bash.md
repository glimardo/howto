BASH (bozza)
====

<!-- toc -- >
Indice
======

<!-- /toc -->

## Echo

echo

## Caratteri di escape più utili

\n
\r
\t

## Man

man comando

## History

history
!!
!comando
!?comando?

## Stream

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

### Cat

cat

### cut

cut

### Split

split

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

#### Grep

grep

### Gestire un formato zip

#### comprimere dei file
gzip

#### decomprimere un file zip
gunzip


### Gestire un archivio tar.gz

#### Comprimere dei file in un archivio

tar -cf nome_archivio.tar

tar -cfz

#### Aggiungere dei file ad un archivio già esistente

tar -r

#### Decomprimere un archivio

tar -xf


## Operatori di controllo

### Eseguire un comando alla volta sequenzialmente

;;

### Operatore logico and

&&

### Operatore logico or

||

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
     
#### Il ciclo for

for <variabile> in <lista>;
do
   <istruzioni>
done
     
     
#### Il ciclo while

while [condizione]
do
    <istruzioni>
done  


