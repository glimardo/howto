BASH SCRIPTING (bozza)
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
