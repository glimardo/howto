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
echo <variabile>
echo <espressione>
```

Esempio:

```bash
$ echo "Questa è una frase!"

# Output
Questa è una frase!
```

Tips:
Echo cancella tutti i ritorni a capo nell'output:

```bash
$ echo "Questa è la prima riga\nQuesta è la seconda ma echo non mi fa andare a capo :("

#Output
Questa è la prima riga\nQuesta è la seconda ma echo non mi fa andare a capo :(
```

## Printf

```bash
printf <espressione formattata>
```

Esempio:

```bash
$ printf "Stampo a video questa frase! \nE vado a capo con quest'altra! \n"

#Output
Stampo a video questa frase!
E vado a capo con quest'altra!
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

```
ls 
```


Esempio:

```bash
$ ls 
LICENSE             db_esempio.sql          python_virtual_env.md       testing.md
README.md           git.md              regex.md            vba.md
agile_testing.md        markdown.md         ruby.md             vi.md
awk.md              python.md           sql.md
bash.md             python_package_manager.md   template.md
```

Se vuoi avere maggiori dettagli sui file elencati, sono interessanti questi parametri:

| Parametro | Significato | Esempio |
|:-:|--- | --- |
| -l | mostra maggiori dettagli sui file | ls -l |
| -a | mostra anche i file nascosti  | ls -a |
| -r | inverte l'ordine della ricerca  | ls -r |
| -t | mostra i file in ordine cronologico di modifica | ls -a |
| -1 | mostra un file per riga | ls -1 |

Ovviamente, puoi combinare i parametri che ti interessano insieme:

```bash
$ ls -lart
total 488
drwxr-xr-x   8 giandoe  staff    256 31 Apr 99:99 ..
-rw-r--r--   1 giandoe  staff   1067 31 Apr 99:99 LICENSE
-rw-r--r--   1 giandoe  staff     69 31 Apr 99:99 agile_testing.md
-rw-r--r--@  1 giandoe  staff  11302 31 Apr 99:99 git.md
-rw-r--r--@  1 giandoe  staff   3808 31 Apr 99:99 markdown.md
-rw-r--r--@  1 giandoe  staff   4884 31 Apr 99:99 regex.mdw
...
```


### Spostarsi tra cartelle

cd

### Spostarsi nella cartella precedente

cd -

### Creare una cartella

```bash
mkdir <nome cartella>
```

Esempio:

```bash
$ mkdir test
$ cd test
$ pwd
/esempi/test
```

#### Creare una cartella con relative sottocartelle

```bash
mkdir -p <cartella>/<sottocartella>/<sottocartella>
```

Esempio:

```bash
$ mkdir -p esempio/howto/bozze
$ cd esempio/howto/bozze/
$ pwd
/esempi/test/esempio/howto/bozze
```


### Cancellare una cartella

```bash
rmdir <cartella> # la cartella DEVE essere vuota!
```

Esempio:

```bash
$ rmdir bozze
$ cd bozze
-bash: cd: bozze: No such file or directory # Corretto: la cartella
                                            # è stata eliminata
```

## Gestione dei file

### Creare un file

```bash
touch <nome file>
```

Se il file non esiste, viene creato.
Se il file esiste, viene aggiornata all'ora corrente in cui si usa il comando.

Esempio:

```bash
$ ls nuovo_file.txt
ls: nuovo_file.txt: No such file or directory
$ touch nuovo_file.txt
$ ls -l nuovo_file.txt
-rw-r--r--  1 giandoe  staff  0  1 Mag 99:20 nuovo_file.txt
$ ls -lr nuovo_file.txt
$ touch nuovo_file.txt
-rw-r--r--  1 gian  staff  0  1 Mag 99:21 nuovo_file.txt
```

### Sapere il tipo di file

file 

### copiare un file od una directory

```bash
cp <nome file> <nuovo nome file>
cp <nome file> <nuovo path>/<nuovo nome file>
```

```
Ricorda:
- se <nome file> è uguale <nuovo nome file>  
  allora <nuovo nome file> sarà sovrascritto
- se <nome file> e <nuovo nome file> sono nella stessa cartella, 
  allora verrà creata una copia di <nome file>
```


Esempio:

```bash
$ cp esempio.txt nuovo_path/esempio.txt
$ cd nuovo_path/
$ ls esempio.txt
esempio.txt
```

Se usi l'opzione -v, potrai vedere in output cosa sta facendo il comando:

```bash
$ cp -v esempio.txt nuovo_path/esempio.txt
esempio.txt -> nuovo_path/esempio.txt
```

### muovere o rinominare un file

#### Rinominare un file o directory

```bash
mv <nome file> <nuovo nome file>
```

Esempio:

```bash
$ mv esempio.txt nuovo_esempio.txt
$ ls esempio.txt
ls: esempio.txt: No such file or directory # L'ho rinominato!
$ ls nuovo_esempio.txt
nuovo_esempio.txt
```

#### Spostare uno o più file/directory

```bash
mv <nome file> <nuovo path>
```

Esempio:

```bash
$ mv -v nuovo_esempio.txt nuovo_path/
nuovo_esempio.txt -> nuovo_path/nuovo_esempio.txt
$ ls nuovo_esempio.txt
ls: nuovo_esempio.txt: No such file or directory # Corretto! L'ho spostato
```


### cancellare un file

```bash
rm <nome file>
```

```bash
rm -i <nome file> # Chiede di procedere prima di cancellare
```

Esempio:

```bash
$ rm esempio.txt
$ ls esempio.txt
ls: esempio.txt: No such file or directory # Corretto: ho eliminato il file
```

### Cercare un file

find

-type -f  
-type -d


### Confrontare due file

```bash
diff <primo file> <secondo file> # Confronta due file riga per riga
```

Se i due file risultano identiti, non sarà fornito alcun output.
Altrimenti verranno mostrate le differenze tra i due file.

Esempio:

```bash
$ cat primo.txt
prima frase
seconda frase
terza frase
$
$ cat secondo.txt
prima frase
terza frase
quarta frase
$
$ diff primo.txt secondo.txt
2d1
< seconda frase
3a3
> quarta frase
```


## Qualcosa


### Cat

#### Visualizzare il contenuto di un file

```bash
cat <nome file>
```

Esempio: 
```bash
$ cat esempio.txt
Questo contenuto
lo sto guardando
con il comando cat
```

#### Concatenare più file

```bash
cat <primo file> <secondo file> <ennesimo file> > <file finame>
```

Esempio: 

```bash
$ cat primo.txt
primo file da concatenare
$ cat secondo.txt
secondo file da concatenare
$ cat terzo.txt
terzo file da concatenare
$
$ cat primo.txt secondo.txt terzo.txt > file_uniti.txt
$ cat file_uniti.txt
primo file da concatenare
secondo file da concatenare
terzo file da concatenare
```


### cut

```bash
cut -d <delimitatore> -f<numero colonna che vuoi vedere>
```

Esempio:

```bash
$ cat esempio.txt
prima seconda terza quarta
a b c d
e f g h
$
$ cat esempio.txt | cut -d ' ' -f1,4 # come delimitatore uso lo spazio
prima quarta                         # e voglio visualizzare la prima e
a d                                  # la quarta colonna
e h
```


### Gestire le date

```bash
date 
```

Esempio:

```bash
$ date
Mer  1 Mag 2019 99:99:99 CEST
```

#### Giorno, mese, anno

Con il comando date, sono utili i seguenti parametri:

| Parametro  | Significato |
| :---: | :---: |
| %d | giorno |
| %a | giorno abbreviato es. 'Lun'|
| %A | giorno per esteso |
| %m | mese |
| %b | mese abbreviato es. 'Gen' |
| %B | mese per esteso |
| %Y | anno |
| %H | ora |
| %M | minuti |
| %S | secondi |
| %F | Equivale a scrivere %Y-%m-%d |


```bash
date +%Y-%m-%d # Formato anno-mese-giorno
               # Ovviamente puoi usarne solo uno
               # o posizionarli come ti sono
               # più utili
```

Esempio:

```bash
$ date +%Y-%m-%d
2019-05-01

$ data=$(date +%Y-%m-%d); echo $data
2019-05-01
```


### Creare un link simbolico a file esistenti


```bash
ln -s <nome file> <nuovo nome file>
```

Esempio:

```bash
$ ln -s permessi_sul_file.txt permessi_sul_file
$ ls -lrt
total 0
-rwx------  1 giandoe  staff   0  1 Mag 99:99 permessi_sul_file.txt
lrwxr-xr-x  1 giandoe  staff  21  1 Mag 99:99 permessi_sul_file -> permessi_sul_file.txt
```


#### rimuovere un link simbolico

```bash
rm <link simbolico>
```

Esempio:

```bash
$ rm permessi_sul_file
$ ls -lrt
total 0
-rwx------  1 giandoe  staff  0  1 Mag 99:99 permessi_sul_file.txt
```


### Split

split

### Verificare se un sistema è su

ping

## Filtri

### Contare il numero di parole


```bash
wc <nome file>

cat <nome file> | wc
```

Esempio:

```bash
$ wc attori_endgame.txt
 12  25 165 attori_endgame.txt  # 12 linee
                                # 25 parole
                                # 165 caratteri
 
```

Puoi raffinare il comando wc con i seguenti parametri:

| Parametro | Esempio | Significato | 
| :---: | --- | --- |
| -l | wc -l <nome file> | indica il numero delle righe totali del file |
| -c | wc -c <nome file> | indica il numero totale dei caratteri  |
| -w | wc -w <nome file> | indica il numero totale di parole  |


### Filtrare le prime righe da un file

```bash
head <nome file>    # di default, vengono visualizzate le prime 10 righe

head -n <nome file> # al posto di n, devi mettere il numero di righe
                    # iniziali da visualizzare

cat <nome file> | head 
```

Esempio:

```bash
$ head -2 ordinamento.txt
a
s
```

### Filtrare le ultime righe di un file

```bash
tail <nome file>    # di default, vengono visualizzate le ultime 10 righe

tail -n <nome file> # al posto di n, devi mettere il numero di righe
                    # finali da visualizzare

cat <nome file> | tail 
```

Esempio:

```bash
$ tail -3 ordinamento.txt
c
c
a
```

#### Continuare a filtrare sempre le ultime righe

Pensa ad un log che viene costantemente popolato.
Può essere molto utile poter vedere sempre le ultime righe
prodotte.
Per poter compiere questa azione, tail permette di utilizzare il parametro -f:

```bash
tail -f <nome file>    # di default, vengono visualizzate le ultime 10 righe prodotte

tail -fn <nome file>   # al posto di n, devi mettere il numero di righe
                       # finali da visualizzare

cat <nome file> | tail -f
```

Per interrompere il comando che rimane sempre attivo, occorre premere CTRL + C.

Esempio:


```bash
$ tail -4f ordinamento.txt
b
c
c
a   # Fino a qui, tail rimane sempre attivo per poter leggere le ultime 4 righe 
^C  # Qui è stato premuto CTRL + C per poter interrompere il comando
    # e da terminale vedrai scritto ^C
$
```

### tee

### Ordinamento

Per gli esempi, utilizzo il file ordinamento.txt avente il seguente contenuto:

```bash
$ cat ordinamento.txt
a
s
d
f
g
a
b
c
c
```


#### Ordinamento crescente

```bash
sort <nome file>

cat <nome file> | sort
```

Esempio:

```bash
$ cat ordinamento.txt | sort
a
a
b
c
c
d
f
g
s
```


#### Ordinamento decrescente

```bash
sort -r <nome file>

cat <nome file> | sort -r
```

Esempio:

```bash
$ cat ordinamento.txt | sort -r
s
g
f
d
c
c
b
a
a
```


#### Ordinamento eliminando i duplicati

```bash
sort -u <nome file>  
sort -ru <nome file> 

cat <nome file> | sort -u
cat <nome file> | sort -ru
```

Esempio:

```bash
$ cat ordinamento.txt | sort -u
a
b
c
d
f
g
s
```


#### Redirigere l'ordinamento in un altro file

```bash
cat <nome file> | sort -o <nuovo file>
```

Esempio:

```bash
$ cat ordinamento.txt | sort -o parole_ordinate.txt
$ cat parole_ordinate.txt
a
a
b
c
c
d
f
g
s
```


### Rimuovere i duplicati da un input

Per gli esempi, utilizzo il file ordinamento.txt avente il seguente contenuto:

```bash
$ cat ordinamento.txt
a
s
d
f
g
a
b
c
c
a
```


#### Rimuovere tutti i duplicati

```
cat <nome file> | sort | uniq # occorre SEMPRE ordinare prima di poter usare uniq
```

Esempio:

```
$ cat ordinamento.txt | sort | uniq
a
b
c
d
f
g
s
```


#### Mostrare solo i valori duplicati

```
cat <nome file> | sort | uniq -d # occorre SEMPRE ordinare prima di poter usare uniq
```

Esempio:

```
$ cat ordinamento.txt | sort | uniq -d
a
c
```


#### Mostra solo le righe duplicate

```
cat <nome file> | sort | uniq -D # occorre SEMPRE ordinare prima di poter usare uniq
```

Esempio:

```
$ cat ordinamento.txt | sort | uniq -D
a
a
a
c
c
```


#### Mostra solo le righe che non hanno duplicati

```
cat <nome file> | sort | uniq -u # occorre SEMPRE ordinare prima di poter usare uniq
```

Esempio:

```
$ cat ordinamento.txt | sort | uniq -u
b
d
f
g
s
```



### Cercare del testo dentro dei file

```bash
Per gli esempi si userà il seguente file:

$ cat attori_endgame.txt
Robert Downey Jr.
Chris Evans
Mark Ruffalo
Chris Hemsworth
Scarlett Johansson
Jeremy Renner
Don Cheadle
Paul Rudd
Brie Larson
Karen Gillan
Danai Gurira
Josh Brolin
```

#### Ricerca semplice

```bash
grep <testo/espressione regolare> <nome file>

cat <nome file> | grep <testo/espressione regolare>

<comando> | grep <testo/espressione regolare> # puoi filtrare anche l'output
                                              # di un comando
```

Esempio:

```bash
$ cat attori_endgame.txt | grep "Robert"
Robert Downey Jr.
```


### Raffinare la ricerca

La ricerca con grep si può raffinare utilizzando i seguenti parametri:

| Parametro  | Significato | Esempio |
| :---: | --- | --- |
| -i | non fa distinzione tra maiuscole e minuscole  | grep -i <testo/espressione regolare |
| -c | conta quante volte compare <testo/espressione regolare>  | grep -c <testo/espressione regolare> |
| -n  | oltre a <testo/espressione regolare> mostra anche in che riga si trova  | grep -n <testo/espressione regolare> |
|  -v | scarta il <testo/espressione regolare> ricercato   | grep -v <testo/espressione regolare> |
|  -r | ricerca in modo ricorsivo nella cartella e nelle sue sottocartelle  | grep -r <testo/espressione regolare> |
| -w  | cerca esattamente questa parola  | grep -w <testo/espressione regolare> |

Esempio:

```bash
$ cat attori_endgame.txt | grep -i "Robert"
Robert Downey Jr.
$
$ cat attori_endgame.txt | grep -c "Chris"
2
$ cat attori_endgame.txt | grep -n "Chris"
2:Chris Evans
4:Chris Hemsworth
$
$ cat attori_endgame.txt | grep -v "Chris"
Robert Downey Jr.
Mark Ruffalo
Scarlett Johansson
Jeremy Renner
Don Cheadle
Paul Rudd
Brie Larson
Karen Gillan
Danai Gurira
Josh Brolin
$
$ cat attori_endgame.txt | grep -r "Mark"
attori_endgame.txt:Mark Ruffalo
$
$ cat attori_endgame.txt | grep -r "Josh"
attori_endgame.txt:Josh Brolin
$
$ cat attori_endgame.txt | grep -r "Jos"
attori_endgame.txt:Josh Brolin
$
$ cat attori_endgame.txt | grep -w "Jos"
$
```


## Paginatori

### more

more

### less

less

## Comprimere i file

### Gestire un formato zip

#### comprimere dei file
gzip

#### decomprimere un file zip
gunzip


### Gestire un archivio tar.gz

Tar è il comando standard che si usa nei sistemi UNIX per poter creare degli archivi di file.
Le opzioni più comunemente utilizzate sono le seguenti:  

| Opzione  | Significato | 
| :---: | --- |
| -c  | crea un nuovo archivio compresso |
| -z  | usa il metodo di archiviazione gzip  |
| -j  | usa il metodo di archiviazione bzip2  |
| -v  | mostra i file archiviati  |
| -f  | indica il nome del file compresso  |
| -r |  aggiunge un file alla fine del file compresso |
| -x | estrae un file compresso |
| --delete <nome file>  | cancella un file dall'archivio compresso  |
| -t  | mostra il contenuto dell'archivio compresso  |


#### Comprimere dei file in un archivio


##### tar.gz

```bash
tar cfzv nome_archivio.tar.gz
```

Esempio:

```bash
$ tar cfvz backup.tar.gz esempio/
```

Output: 
```bash
esempio/
esempio/attori_endgame.txt
esempio/ordinamento.txt
esempio/parole_ordinate.txt
```


#### Decomprimere un archivio

```bash
tar -xfv nome_archivio.tar.gz
```

Esempio:

```bash
$ tar xfv backup.tar.gz
```

Output: 

```bash
esempio/
esempio/attori_endgame.txt
esempio/ordinamento.txt
esempio/parole_ordinate.txt
```


#### Visualizzare il contenuto di un archivio

```bash
tar -tvf nome_archivio.tar.gz
```

Esempio:

```bash
$ tar -tvf backup.tar.gz
```

Output: 

```bash
drwxrwxrwx ubuntu/ubuntu     0 2019-05-06 15:45 esempio/
-rw-rw-rw- ubuntu/ubuntu   165 2019-05-02 15:43 esempio/attori_endgame.txt
-rw-rw-rw- ubuntu/ubuntu    20 2019-05-02 14:19 esempio/ordinamento.txt
-rw-rw-rw- ubuntu/ubuntu    18 2019-05-02 12:43 esempio/parole_ordinate.txt
```

## Operatori di controllo

### Eseguire un comando alla volta sequenzialmente

;;


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

```
chmod <permessi> <nomefile>
```


Il modo più semplice per dare i permessi è il seguente:

| Permesso  | Esempio | Significato | 
| :---: | --- | --- |
| r | chmod +r <nomefile> | si danno i permessi di lettura al file |
| w | chmod +w <nomefile> | si danno i permessi di scrittura al file |
| x | chmod +x <nomefile> | si danno i permessi di esecuzione al file |
| r | chmod -r <nomefile> | si tolgono i permessi di al file |
| w | chmod -w <nomefile> | si tolgono i permessi di scrittura al file|
| x | chmod -x <nomefile> | si tolgono i permessi di esecuzione al file |


Esempio:

```bash
$ chmod +r permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
-rw-r--r--  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
$ chmod +w permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
-rw-r--r--  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
$ chmod +x permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
-rwxr-xr-x  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
$
$ chmod -r permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
--wx--x--x  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
$ chmod -w permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
---x--x--x  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
$ chmod -x permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
----------  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt
```

Si possono dare i permessi anche in forma ottale:

| Permesso  | Forma ottale | 
| :---: | --- |
| rwx | 7 |
| rw- | 6 |
| r-x | 5 |
| r-- | 4 |
| -wx | 3 |
| -w- | 2 |
| --x | 1 |
| --- | 0 |

Esempio:

Esempio:

```bash
$ chmod 700 permessi_sul_file.txt
$ ls -l permessi_sul_file.txt
-rwx------  1 giandoe  staff  0  1 Mag 00:00 permessi_sul_file.txt

```

## Gestire le stringhe

Si utilizzerà la variabile di esempio:

```bash
stringa="Questa è una stringa con cui posso fare esperimenti"
```

### Lunghezza di una stringa

```bash
${#stringa} # Restituisce la lunghezza della stringa
```

Esempio:

```bash
printf ${#stringa}
```

Output:

```bash
51
```


### Concatenare le stringhe

```bash
prima_stringa = "<testo>"
seconda_stringa = "<testo>"
concatenazione = "${prima_stringa} ${seconda_stringa}"
```

Esempio:

```bash
stringa1="Prima stringa"
stringa2="Seconda stringa"
stringa3="${stringa1} ${stringa2}"
echo "$stringa3"
```

Output:

```bash
Prima stringa Seconda stringa
```

### Sostituzione in una stringa

```bash
${stringa//<parola da sostituire>/<parola con cui vuoi sostituire>}
```

Esempio:

```bash
echo ${stringa//con/su}
```

Output: 
```bash
# Sostituzione di una parola
Questa è una stringa su cui posso fare esperimenti
```

### Cambiare la stringa tutta in MAIUSCOLO o minuscolo

#### Maiuscolo

```bash
echo ${stringa^^}
```

Esempio:

```bash
$ echo ${stringa^^}
```

Output: 
```bash
QUESTA È UNA STRINGA CON CUI POSSO FARE ESPERIMENTI
```


#### Minuscolo

```bash
echo ${stringa,,}
```

Esempio:

```bash
stringa_maiuscolo="QUESTA È UNA STRINGA CON CUI POSSO FARE ESPERIMENTI"
printf "Stringa tutta in minuscolo: \n"
echo "${stringa_maiuscolo,,}"
```

Output: 
```bash
Stringa tutta in minuscolo:
questa è una stringa con cui posso fare esperimenti
```

### Estrarre delle sottostringhe

Data una variabile stringa, si possono utilizzare i seguenti comandi per estrarre delle sottostringhe:

| Comando  | A cosa serve | 
| :---: | --- |
| ${stringa:<posizione iniziale>,<posizione in cui si trova un carattere>} | Estrarre una sottostringa a partire dalle posizioni indicate |
| ${stringa:<posizione iniziale della parola>:<posizione finale della parola>} | Estrarre una parola |
| ${stringa:(<indice negativo partendo dalla fine>)}  | Estrae una parola partendo dalla fine  |


Esempio:

```bash

# Estrarre un carattere
printf ${stringa:0,5}
printf "\n"

# Estrarre una parola
printf ${stringa:0:6}
printf "\n"

# Estrarre una parola a partire dalla fine di una stringa
printf ${stringa:(-11)}
printf "\n"
```

Output: 

```bash
a
Questa
esperimenti
```


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

### Leggere un input inserito da tastiera

```bash
read <nome variabile>
```

Esempio:

```bash
echo "Ciao, come ti chiami? "
read nome
echo "Ciao, $nome"
```

Output
```
Ciao, come ti chiami?
Gian
Ciao, Gian
```

Puoi passare anche più valori separati dallo spazio, \ o un tab:

```bash
echo "Inserisci tre parole a caso: "
read var1 var2 var3
echo "prima parola: $var1"
echo "seconda parola: $var2"
echo "terza parola: $var3"
```

Output

```
Inserisci tre parole a caso:
howto su bash
prima parola: howto
seconda parola: su
terza parola: bash
```

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

| Operatore | Sintassi |
|---|:-:|
| Addizione | a + b | 
| Sottrazione | a - b |
| Moltiplicazione| a * b |
| Potenza | a ** b|
| Divisione | a / b|
| Modulo (cioè il resto della divisione) | a % b|

##### Operatori di confronto

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| =  | Uguale a | $a = $b |
| !=  | Diverso da | $a != $b |
| >  | Maggiore di | $a > $b |
| >=  | Maggiore od uguale a | $a >= $b |
| <  | Minore di | $a < $b |
| <=  | Minore od uguale a | $a <= $b |


##### Operatori di confronto su stringhe


| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| -z  | Verifica se la stringa è vuota | a="Sono una stringa"; if [[ -z $a ]]; then echo "La stringa è vuota"; else echo "La stringa non è vuota"; fi |
| -n  | Verifica se la stringa non è vuota | a=""; if [[ -n $a ]]; then echo "La stringa è vuota"; else echo "La stringa non è vuota"; fi |

##### Operatori binari di confronto

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| -eq  | è uguale | $a -eq $b |
| -ne  | è diverso da | $a -ne $b |
| -gt  | è maggiore di | $a -gt $b |
| -ge  | è maggiore o uguale a | $a -ge $b |
| -lt  | è minore o uguale a | $a -lt $b |
| -le  | è minore o uguale a | $a -le $b |


##### Operatori di verifica file

| Operatore  | Significato |
| :---: | :---: |
| -e | restituisce True se esiste il file |
| -f | restituisce True se il file non è una directory o un file di dispositivo |
| -s | restituisce True se il file ha dimensioni maggiori di zero |
| -d | restituisce True se il file è una directory |
| -r | restituisce True se per l'utente che esegue la verifica il file ha permessi di letetura |
| -w | restituisce True se per l'utente che esegue la verifica il file ha permessi di scrittura |
| -x | restituisce True se per l'utente che esegue la verifica il file ha permessi di esecuzione |


##### Operatori logici

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| && | il secondo comando viene eseguito solo se il primo è stato eseguito con successo  | <comando 1> && <comando 2> |
| \|\| | Il secondo comando viene eseguito solo se il primo è stato eseguito senza successo | <comando 1> \|\|<comando 2> |


##### Operatori booleani

| Operatore  | Significato |
| :---: | :---: | 
| true | Restituisce 0 se l'esecuzione di un'istruzione è andata bene |
| false | Restituisce 1 se l'esecuzione di un'istruzione non è andata bene |


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

##### L'istruzione if su di una riga

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

```bash
for <variabile> in <lista>
do
   <istruzioni>
done
```

Esempio:

```bash
for i in {1,2,3}
  do
    printf "numero della lista: $i \n"
  done
```

Output: 
```bash
numero della lista: 1
numero della lista: 2
numero della lista: 3
```

##### Ciclo for in formato c

```bash
for ((i=1; i<numero_massimo; i++))
  do
    <istruzioni>
  done
```

Esempio:

```bash
for ((i=1; i<4; i++))
  do
    printf "numero della lista: $i \n"
  done
```

Output: 
```bash
numero della lista: 1
numero della lista: 2
numero della lista: 3
```


##### L'istruzione for su di una riga

```bash
for i in <lista>; do <istruzioni>; done
```

Esempio:

```bash
for ((i=1; i<4; i++))
  do
    printf "numero della lista: $i \n"
  done
```

Output: 
```bash
numero della lista: 1
numero della lista: 2
numero della lista: 3
```


#### Verifica delle condizioni di ingresso (Case)  

```bash
Case <variabile> in
valore1) <istruzione>;;
valoren) <istruzione>;;
*) <istruzione>;;
esac
```

Esempio:

```bash
printf " -- Controllo se un numero è pari o dispari -- \n"
printf "inserisci un numero: "
read numero

controllo=$(($numero%2))

case "$controllo" in

0) printf "$numero è un numero pari! \n";;
*) printf "$numero è un numero dispari! \n";;
esac
```

Output: 
```bash
 -- Controllo se un numero è pari o dispari --
inserisci un numero: 1
1 è un numero dispari!

 -- Controllo se un numero è pari o dispari --
inserisci un numero: 2
2 è un numero pari!
```


#### Il ciclo while


```bash
while [condizione vera]
do
    <istruzioni>
    <Ricordati valutare lo stato della condizione>
done  
```

Esempio:

```bash
CONTATORE=0

while [ $CONTATORE -lt 5 ]
  do
     printf "$CONTATORE è ancora < 5! \n"
     let CONTATORE=CONTATORE+1
  done
```

Output: 
```bash
0 è ancora < 5!
1 è ancora < 5!
2 è ancora < 5!
3 è ancora < 5!
4 è ancora < 5!
```

Attenzione a non sbagliare la condizione, altrimenti entri in
un ciclo infinito dal quale non ne esci più!


##### Ciclo infinito

```bash
while: # equivale a while true
do
    <istruzioni>
    # Ricordati di valutare la condizione
    # di uscita altrimenti rimani nel
    # loop per sempre!
done  
```

Esempio:

```bash
i=0

while true
  do
    if [[ i -lt 5  ]]
      then
           printf "Sono ancora nel while! \n"
           i=$((i+1))
      else
          break
    fi
  done
printf "Sono uscito dal ciclo while! \n"
```

Output: 
```bash
Sono ancora nel while!
Sono ancora nel while!
Sono ancora nel while!
Sono ancora nel while!
Sono ancora nel while!
Sono uscito dal ciclo while!
```

##### L'istruzione while su di una riga

```bash
COSTANTE=<valore>; while [condizione]; do <istruzioni> <Ricordati valutare lo stato della condizione>; done
```

Esempio:

```bash
CONTATORE=0; while [ $CONTATORE -lt 5 ]; do printf "$CONTATORE è ancora < 5! \n";  let CO
NTATORE=CONTATORE+1; done
```

Output: 
```bash
0 è ancora < 5!
1 è ancora < 5!
2 è ancora < 5!
3 è ancora < 5!
4 è ancora < 5!
```


#### Il ciclo until

```bash
until [condizione falsa]
do
    <istruzioni>
done  
```

Esempio:

```bash
i=1

printf "Valore di i: $i \n"
until [ $i -gt 5 ]
  do
    printf "Sono ancora nel ciclo until perchè i vale: $i! \n"
    i=$((i+1))
  done

printf "Sono uscito dal ciclo until! \n"
```

Output: 
```bash
Valore di i: 1
Sono ancora nel ciclo until perchè i vale: 1!
Sono ancora nel ciclo until perchè i vale: 2!
Sono ancora nel ciclo until perchè i vale: 3!
Sono ancora nel ciclo until perchè i vale: 4!
Sono ancora nel ciclo until perchè i vale: 5!
Sono uscito dal ciclo until!
```


##### L'istruzione until su di una riga

```bash
 until [ condizione falsa ]; do <istruzioni>; done
```

Esempio:

```bash
$ i=1; printf "Valore di i: $i \n"; until [ $i -gt 5 ]; do printf "Sono ancora nel ciclo until perchè i vale: $i! \n"; i=$((i+1)); done; printf "Sono uscito dal ciclo until! \n";
```

Output: 
```bash
Valore di i: 1
Sono ancora nel ciclo until perchè i vale: 1!
Sono ancora nel ciclo until perchè i vale: 2!
Sono ancora nel ciclo until perchè i vale: 3!
Sono ancora nel ciclo until perchè i vale: 4!
Sono ancora nel ciclo until perchè i vale: 5!
Sono uscito dal ciclo until!
```


#### Controlli sul ciclo 

##### Break

```
Break interrompe l'esecuzione del ciclo in qualsiasi punto ci si trovi
```

```bash
break
```

Esempio:

```bash
for i in {1,2,3,4}
  do
    printf "numero della lista: $i \n"
    break
  done
```

Output: 
```bash
numero della lista: 1 # Ho messo subito il break, quindi esco dopo la prima istruzione
```


##### Continue

```
Continue fa saltare all'iterazione successiva
```

```bash
continue
```

Esempio:

```bash
printf "Stampo solo i numeri pari! \n"
for i in {1,2,3,4}
  do

    if [ $(( i%2 )) == 0 ]
      then
          printf "numero della lista: $i \n"
      else
          continue
    fi
  done
```

Output: 
```bash
Stampo solo i numeri pari!
numero della lista: 2
numero della lista: 4
```

## DA TROVARE UNA CATEGORIA

### basename


```bash
variabile = "percorso\<nome file>"
`basename $variabile`

#output: <nome file>
```

Esempio:

```bash
percorso="esercizio/esempio.sh"
echo "`basename $percorso`"
```

Output: 

```bash
esempio.sh
```


### dirname


```bash
variabile = "percorso\<nome file>"
`dirname $variabile`

#output: percorso
```

Esempio:

```bash
percorso="esercizio/dirname/esempio.sh"
echo "`dirname $percorso`"
```

Output: 

```bash
esercizio/dirname
```
