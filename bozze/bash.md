BASH (molto bozza)
====

<!-- toc -- >
Indice
======

<!-- /toc -->

# Fondamentali

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


## Storico dei comandi utilzzati

| Comando  | Significato |
| :---: | :---: |
| history |  |
| !! |  | 
| !comando |  |
| !?comando? |  |


## Ripulire lo schermo del terminale

```bash
clear
```

Esempio:

```bash
$ clear
```


## Variabili di ambiente utili

| Variabile d'ambiente  | Significato |
| :---: | :---: |
| $USER | indica l'utente con cui sei loggato  |
| $HOME | indica il path della cartella home dell'utente  |
| $PWD  | indica il path in cui ci si trova |
| $SHELL | indica il nome della shell in uso  |
| $?  | indica lo stato d'uscita dell'ultimo comando eseguito  |

Esempio:

```bash$
$ echo $USER
giandoe
$ echo $HOME
/users/giandoe
$ echo $PWD
/users/giandoe/howto
$ echo $SHELL
/bin/bash
$ echo $?
0
```


## Stream

### Pipeline  

Il pipe '|' serve a redirigere lo stout del primo comando come stdin di quello successivo.

```bash
<comando> | <comando> # posso fare tanti pipe quanti me ne servono!
```

Esempio:

```bash
$ cat utenti.txt
John
Gian
Dan
$ cat utenti.txt | grep -i "gian" # di tutto il contenuto di utenti.txt
Gian                              # filtro solo "gian"
```


### Reindirizzare l'output

```bash
<comando> > <nome file in cui salvare lo stdout>   # Se il file esiste già, 
                                                   # lo sovrascrive

<comando>  >> <nome file in cui salvare lo stdout> # Se il file non esiste 
                                                   # lo crea.
                                                   # Se esiste, aggiunge 
<                                                   # l'output in fondo

<comando> &> <nome file in cui salvare lo stdout e lo stderr> # come >

<comando> &>> <nome file in cui salvare lo stdout e lo stderr> # come >>

<comando> 2>&1 <nome file in cui redirigere lo stderr allo stdout>

<comando>  >/dev/null <non mostra l\'output> 
```

Esempio:

```bash
$ echo "Reindirizzo l\'output! " > output.log
$ cat output.log
Reindirizzo l\'output!
$
$ echo "Reindirizzo l\'output! " >> output.log
$ cat output.log
Reindirizzo l\'output!
Reindirizzo l\'output!
$
$ echo "Reindirizzo l\'output! " &> output.log
$ cat output.log
Reindirizzo l\'output!
$
$ echo "Reindirizzo l\'output! " &>> output.log
$ cat output.log
Reindirizzo l\'output!
Reindirizzo l\'output!
$
$ echo "Reindirizzo l\'output! "2 &>1 output.log
$ cat output.log
Reindirizzo l\'output!
$
$ echo "Reindirizzo l\'output! ">/dev/null
$
```


### Reindirizzare l'input

```bash
<comando> < <file di input> 
```

Esempio:

```bash
$ cat utenti.txt
John
Gian
$
$ cat -n < utenti.txt
     1  John
     2  Gian
     3  Dan
```


#### Here document

```bash
<comando> << <nome variabile>
> <istruzione>
> <nome variabile>
```

Esempio:

```bash
$ cat << EOF
> prima riga
> seconda riga
> terza riga
> EOF
prima riga
seconda riga
terza riga
```


## Paginatori

### Mostrare a video un output una pagina alla volta

```bash
more <nome file>
<comando> <nome file> | more
```

Una volta visualizzata la prima pagina, si possono usare i seguenti comandi:

| Comando  | Significato |
| :---: | --- | 
| premere spazio | si va alla pagina successiva | 
| premere return | si procede una riga alla volta  | 
| premere d  | si va avanti di mezza pagina alla volta  | 
| premere b | si torna indietro di mezza pagina alla volta  | 
| premere q | si esce dalla visualizzazione del file | 
|   |   | 

Esempio:

```bash
$ more lorem_ipsum.txt
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq
ua. Non curabitur gravida arcu ac tortor. Et ligula ullamcorper malesuada proin libero. Feugiat nisl pretium fusce id ve
lit ut tortor pretium viverra. In dictum non consectetur a erat. Nisi quis eleifend quam adipiscing vitae. Leo duis ut d
iam quam nulla porttitor. Id venenatis a condimentum vitae sapien pellentesque habitant. At elementum eu facilisis sed o
dio morbi quis commodo. Id volutpat lacus laoreet non curabitur gravida arcu. Quis lectus nulla at volutpat diam ut vene
natis. Eu augue ut lectus arcu bibendum at. Nullam non nisi est sit amet.
[...]

$ cat lorem_ipsum.txt | more
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq
ua. Non curabitur gravida arcu ac tortor. Et ligula ullamcorper malesuada proin libero. Feugiat nisl pretium fusce id ve
lit ut tortor pretium viverra. In dictum non consectetur a erat. Nisi quis eleifend quam adipiscing vitae. Leo duis ut d
iam quam nulla porttitor. Id venenatis a condimentum vitae sapien pellentesque habitant. At elementum eu facilisis sed o
dio morbi quis commodo. Id volutpat lacus laoreet non curabitur gravida arcu. Quis lectus nulla at volutpat diam ut vene
natis. Eu augue ut lectus arcu bibendum at. Nullam non nisi est sit amet.
[...]
```


# Gestione delle cartelle


## Visualizzare il path della cartella in uso

```bash
pwd
```

Esempio:

```bash
$ pwd
/users/giandoe/howto
```


## Visualizzare il contenuto  di una cartella

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


## Spostarsi tra cartelle

```bash
cd <path/cartella> # mi sposto nel path indicato

cd -               # torno nell'ultima cartella in cui ero
cd ..              # salgo nella cartella precedente a questa
```

Esempio:

```bash
$ cd howto/
$ pwd
/users/giandoe/howto
```


## Creare una cartella

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

### Creare una cartella con relative sottocartelle

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


## Cancellare una cartella

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


## Visualizzare l'utilizzo del disco

```bash
du -h # l'opzione -h rende l'output più "umano"
```

Esempio:

```bash
$ du -h
8,0K  ./esempio/howto
8,0K  ./esempio
```


## Visualizzare l'utilizzo del filesystem

```bash
df -h # l'opzione -h rende l'output più "umano"
```

Esempio:

```bash
$ df -h 
Filesystem    Size  Used  Avail  Use%  Mounted on
/dev/sda0    100GB  50GB   50GB   50%  /
...
```


# GESTIONE DEI FILE

## Creare un file

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


## Copiare un file od una directory

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

## Muovere o rinominare un file

### Rinominare un file o directory

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

### Spostare uno o più file o directory

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


## Cancellare un file

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

## Cercare un file

```bash
find <path dove cercare> <tipologia> <nome>
```

Esempio:

```bash
$ find . -iname "utenti.txt"
./howto/utenti.txt

$ find howto/ -iname "utenti*"
howto//utenti.txt
```

Con find, le opzioni più utilizzate sono le seguenti:  

| Opzione  | Esempio | Significato | 
| :---: | --- | --- |
| -iname | find <path dove cercare> -iname <nome> | Cerca <nome> senza guardare se le lettere sono maiuscole o minuscole  |
| -type f | find <path dove cercare> -type f <nome> | Cerca solo file che si chiamano <nome> |
| -type d | find <path dove cercare> -type d <nome> | Cerca solo cartella che si chiamano <nome> |
| -size +<dimensione> | find <path dove cercare> -size +<dimensione> | Cerca solo <nome> che supera le dimensioni indicate |
| -size -<dimensione> | find <path dove cercare> -size -<dimensione> | Cerca solo <nome> che ha dimensioni inferiori a quelle indicate |


Esempio:

```bash
$ find . -iname "utenti*" -type f -size -10k
./howto/utenti.txt
```


## Confrontare due file

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


## Visualizzare il contenuto di un file

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


## Concatenare più file

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


### Delimitare le colonne da visualizzare in un file

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


## Creare un link simbolico a file esistenti


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


### rimuovere un link simbolico

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


## Dividere un file in diverse parti

Per dividere un file in parti più piccole, si usa il comando split:

```bash
split <nome file>
```

che unito ai seguenti parametri permette di estenderne le funzionalità:

| Parametro | Esempio | Significato |
| :---: | --- | --- |
| -b <numero>K |  split -b 10K <nome file> | Divide il file ogni <numero> KB  |
| -b <numero>M |  split -b 10M <nome file> | Divide il file ogni <numero> MB  |
| -b <numero>G |  split -b 10G <nome file> | Divide il file ogni <numero> GB  |
| -d  | split -d <nome file> | Utilizza nome prefisso il numerico invece che alfabetico nei file divisi  |
| -e  | split -e <nome file> | Si evita di creare dei file vuoti |       
| -l<numero righe>  | split -l5 <nome file>  | Divide il file creandone uno nuovo ogni <numero righe>  |
| -n<numero> | split -n10 <nome file> | Divide il file in esattamente <numero> di file divisi |
| <nuovo nome>_  | split <nome file> <nuovo nome>_  | utilizza <nuovo nome>_ come nome prefisso  |
| --verbose  |  split --verbose <nome file> | Mostra i file creati  |

Esempio:

```bash
$ cat primo.txt
prima frase
seconda frase
terza frase
```

```bash
$ split -dn3 primo.txt
$ ls -1
primo.txt
x00
x01
x02
```

```bash
$ split -l1 primo.txt
$ ls -l
primo.txt
xaa
xab
xac
```

```bash
$ split -dn2 primo.txt primo_n_
$ ls -1
primo_n_00
primo_n_01
primo.txt
```


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

```bash
<comando> | tee <file in cui salvare l\'<output>
```

Esempio:

```bash
# test.sh
for i in {1,2,3,4,5,6}
  do
    printf "numero della lista: $i \n"
  done

$ ./test.sh | tee test.log
numero della lista: 1
numero della lista: 2
numero della lista: 3
numero della lista: 4
numero della lista: 5
numero della lista: 6
$ cat test.log
numero della lista: 1
numero della lista: 2
numero della lista: 3
numero della lista: 4
numero della lista: 5
numero della lista: 6
```

## Ordinamento

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


### Ordinamento crescente

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


### Ordinamento decrescente

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


### Ordinamento eliminando i duplicati

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


### Redirigere l'ordinamento in un altro file

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


## Gestione dei duplicati

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


### Rimuovere tutti i duplicati

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


### Mostrare solo i valori duplicati

```
cat <nome file> | sort | uniq -d # occorre SEMPRE ordinare prima di poter usare uniq
```

Esempio:

```
$ cat ordinamento.txt | sort | uniq -d
a
c
```


### Mostra solo le righe duplicate

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


### Mostra solo le righe che non hanno duplicati

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


## Effettuare ricerche nel testo dei file

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

### Ricerca semplice

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


#### Raffinare la ricerca

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


## Comprimere i file

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


## Verificare l'integrità di un file

### cksum

```bash
cksum <nome file>
```

Esempio:

```bash
$ cksum primo.txt
3425985244 38 primo.txt
$ cp -v primo.txt nuovo
'primo.txt' -> 'nuovo/primo.txt'
$ cd nuovo/
$ cksum primo.txt
3425985244 38 primo.txt # Il file originale e quello copiato
                        # hanno lo stesso checksum, quindi non ho
                        # avuto problemi durante la copia
```


### md5sum

```bash
md5sum <nome file>
```

Esempio:

```bash
$ md5sum primo.txt
252f7f6a6c1a3f42f2920b3ef8eb94a5  primo.txt
$ cp -v primo.txt nuovo
'primo.txt' -> 'nuovo/primo.txt'
$ cd nuovo/
$ md5sum primo.txt
252f7f6a6c1a3f42f2920b3ef8eb94a5  primo.txt # Il file originale e quello copiato
                                            # hanno lo stesso checksum, quindi non ho
                                            # avuto problemi durante la copia
```


## Convertire un file da un formato DOS ad Unix e viceversa

I file DOS terminano con C-LF mentre quelli UNIX con LF.
Questo comando permette di convertire da un comando all'altro per
non avere problemi nei sistemi in uso.

```bash
dos2unix <nome file>
```

Esempio:

```bash
$ dos2unix primo.txt
```


## Cambiare i permessi sui file

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


## Scaricare file dalla rete

### wget 

```bash
wget <server>/<pagina>
```

Opzioni utili per migliorare il download:

| Parametro  | Esempio | Significato |  
| :---: | --- |  --- |
| -b  | wget -b <server>/<pagina> | Scarica la pagina in background  |
| -a  | wget -a <nome log> <server>/<pagina>  | Scrive un log di quanto effettuato  |
| -o  | wget -o <nome log> <server>/<pagina> | Scrive un log di quanto effettuato. Se ne esiste uno precedente, lo sovrascrive |
| -i  | wget -i <file contenente un URL> | Prende l'URL dal file passato in input |
| -c  | wget -c <server>/<pagina> | Continua a scaricare da un download interrotto  |

Esempio:

```bash
$ wget https://github.com/glimardo/howto/blob/master/README.md
--2019-05-07 14:39:51--  https://github.com/glimardo/howto/blob/master/README.md
Resolving github.com (github.com)... 192.30.253.112
Connecting to github.com (github.com)|192.30.253.112|:443... connected.
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


## Array

In Bash esistono gli array monodimensionali.

### Creazione di un array

```bash
array[<posizione>]=<valore>

array=(<valore 1> <valore 2> <valore n>)
```

Esempio:

```bash
lista[0]=1
lista[2]=2       # Non devo per forza inserire dati contigui
lista[5]="Rosso" # Posso inserire valori eterogenei

lista=(1 2 "Rosso") # Posso inserire tutti i valori insieme
```

### Visualizzare un array  

```bash
echo "${array[@]}"

echo "${array[*]}"
```

Esempio:

```bash
lista[0]=1
lista[1]=2
lista[2]="Rosso"

printf '%s\n' "${lista[@]}"
printf "${lista[*]} \n"
```

Output: 

```bash
1
2
Rosso
1 2 Rosso
```

### Visualizzare un elemento di un array

```bash
echo ${array[<posizione>]

printf "${array[<posizione>]}"
```

Esempio:

```bash
lista[0]=1
lista[2]=2
lista[5]="Rosso"

printf "${lista[0]} \n"
printf "${listsa[1]} \n"
printf "${lista[5]} \n"
```

Output: 

```bash
1        
        # lista[1] non esiste quindi è corretto che non venga stampato a video nulla
Rosso
```


### Visualizzare il numero di elementi presenti in un array  

```bash
${#array[@]}
```

Esempio:

```bash
lista[0]=1
lista[1]=2
lista[2]="Rosso"

printf "${#lista[@]} \n"
```

Output: 

```bash
3
```


### Visualizzare la lunghezza di un elemento di un array

```bash
echo "${#array[<posizione>]}"
```

Esempio:

```bash
lista[0]=1
lista[1]=2
lista[2]="Rosso"

printf "${#lista[2]} \n"
```

Output: 

```bash
5
```


### Aggiungere elementi ad un array  

```bash
array[<posizione>] = <valore>
```

Esempio:

```bash
lista=(1 2 "Rosso")
lista[3]="Pippo"

printf "${lista[*]} \n"
```

Output: 

```bash
1 2 Rosso Pippo
```

### Sostituire elementi in un array  

```bash
array[<posizione del vecchio valore>] = <nuovo valore>
```

Esempio:

```bash
lista=(1 2 "Rosso")
lista[2]="Sheldon"

printf "${lista[*]} \n"
```

Output: 

```bash
1 2 Sheldon
```

### Rimuovere elementi da un array  

```bash
unset array[<posizione>] # Rimuove un elemento
unset array              # Rimuove tutto l'array
```

Esempio:

```bash
lista=(1 2 "Rosso")
unset lista[2]

printf "${lista[*]} \n"

printf "Elimino l'intero array: \n"

unset lista

printf "${lista[*]} \n"
```

Output: 

```bash
1 2
Elimino l'intero array:
```


## Gli operatori


### Operatori aritmetici

| Operatore | Sintassi |
|---|:-:|
| Addizione | a + b | 
| Sottrazione | a - b |
| Moltiplicazione| a * b |
| Potenza | a ** b|
| Divisione | a / b|
| Modulo (cioè il resto della divisione) | a % b|


### Operatori di confronto

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| =  | Uguale a | $a = $b |
| !=  | Diverso da | $a != $b |
| >  | Maggiore di | $a > $b |
| >=  | Maggiore od uguale a | $a >= $b |
| <  | Minore di | $a < $b |
| <=  | Minore od uguale a | $a <= $b |


### Operatori di confronto su stringhe

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| -z  | Verifica se la stringa è vuota | a="Sono una stringa"; if [[ -z $a ]]; then echo "La stringa è vuota"; else echo "La stringa non è vuota"; fi |
| -n  | Verifica se la stringa non è vuota | a=""; if [[ -n $a ]]; then echo "La stringa è vuota"; else echo "La stringa non è vuota"; fi |


### Operatori binari di confronto

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| -eq  | è uguale | $a -eq $b |
| -ne  | è diverso da | $a -ne $b |
| -gt  | è maggiore di | $a -gt $b |
| -ge  | è maggiore o uguale a | $a -ge $b |
| -lt  | è minore o uguale a | $a -lt $b |
| -le  | è minore o uguale a | $a -le $b |


### Operatori di verifica file

| Operatore  | Significato |
| :---: | :---: |
| -e | restituisce True se esiste il file |
| -f | restituisce True se il file non è una directory o un file di dispositivo |
| -s | restituisce True se il file ha dimensioni maggiori di zero |
| -d | restituisce True se il file è una directory |
| -r | restituisce True se per l'utente che esegue la verifica il file ha permessi di letetura |
| -w | restituisce True se per l'utente che esegue la verifica il file ha permessi di scrittura |
| -x | restituisce True se per l'utente che esegue la verifica il file ha permessi di esecuzione |


### Operatori logici

| Operatore  | Significato | Esempio |
| :---: | :---: | --- |
| && | il secondo comando viene eseguito solo se il primo è stato eseguito con successo  | <comando 1> && <comando 2> |
| \|\| | Il secondo comando viene eseguito solo se il primo è stato eseguito senza successo | <comando 1> \|\|<comando 2> |


### Operatori booleani

| Operatore  | Significato |
| :---: | :---: | 
| true | Restituisce 0 se l'esecuzione di un'istruzione è andata bene |
| false | Restituisce 1 se l'esecuzione di un'istruzione non è andata bene |


## La logica

### L'istruzione if

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

      
#### Elif

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


### Il ciclo for

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


#### Ciclo for in formato c

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


#### L'istruzione for su di una riga

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


### Verifica delle condizioni di ingresso (Case)  

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


### Il ciclo while


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


#### Ciclo infinito

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


#### L'istruzione while su di una riga

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


### Il ciclo until

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


#### L'istruzione until su di una riga

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


### Controlli sul ciclo 

#### Break

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


#### Continue

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


## Scripting


### Shebang

```bash
# shebang.sh

#!/usr/bin/env bash

<istruzioni dello script>
```

Esempio:

```bash
#!/usr/bin/env bash

printf "Forma errata da usare: #!/bin/bash \nForma corretta da usare: #!/usr/bin/env bash \n "
```

Output: 

```bash
$ ./shebang.sh
Forma errata da usare: #!/bin/bash
Forma corretta da usare: #!/usr/bin/env bash
```


### Commenti

```bash
# I commenti iniziano con #
```

Esempio:

```bash
# Questo è un commento
```


### Variabili


#### Scrivere una variabile

```bash
variabile=<valore da associare>
COSTANTE=<valore da associare>
variabile_composta=<valore da associare>$variabile
```

Esempio:

```bash
# variabili.sh

frase="Sono una frase"
numero=10
COSTANTE=3.14
nuova_frase="$frase nuova!"
```

Output: 

```bash
$ ./variabili.sh
Sono una frase
10
3.14
Sono una frase nuova!
```


#### Sostituire un comando in una variabile

```bash
variabile=$(<comando>)
```

Esempio:

```bash
# test.sh

#!/usr/bin/env bash

stampa=$(echo "Questo comando è lanciato da una variabile!")

echo $stampa
```

Output: 

```bash
$ ./test.sh
Questo comando è lanciato da una variabile!
```


### Estrarre il nome del file da un percorso ed assegnarlo ad una variabile

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


### Estrarre una cartella da un percorso ed assegnarlo ad una variabile

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


### Eseguire uno script

#### Permessi di esecuzione

```bash
chmod +x <nome script>
chmod 755 <nome script>
```

Esempio:

```bash
$ chmod +x variabili.sh
```


#### Lanciare uno script  

```bash
./<nome script>
sh <nome script>
```

Esempio:

```bash
$ ./test.sh
Sono un test!
$ sh test.sh
Sono un test!
```


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


## Le funzioni

### Cosa sono le funzioni  

La funzione non è altro che un "mini programma" che esegue una funzionalità 
che accetta dei parametri in input e fornisce un output.

regola aurea:
se la funzione non l'hai ancora definita, non chiamarla!


### Definire una funzione

```bash
nome_funzione ()
{
 <istruzioni>
}

# Chiamo la funzione
nome_funzione
```

Esempio:

```bash
# saluto.sh

saluto ()
{
  echo "Ciao!"
}

saluto
```


Output: 

```bash
$ ./saluto.sh
Ciao!
```


### Passare parametri ad una funzione


```bash
# Definizione della funzione parametrica
nome_funzione ()
{
 <istruzioni>
}

# Passare parametri alla funzione
nome_funzione <parametro 1> <parametro 2> <parametro n>
```

Esempio:

```bash
# saluto.sh

saluto ()
{
  if [ -z "$1" ]
    then
         printf "Non è stato inserito il nome! \n"
    else
         printf "Ciao, $1!\nQuesta è una funzione parametrica! \n"
  fi
}

printf "Chiamo la funzione saluto senza parametro: \n"
saluto
printf "Chiamo la funzione saluto con parametro: \n"
saluto "John Doe"
```

Output: 

```bash
$ ./saluto.sh
Chiamo la funzione saluto senza parametro:
Non è stato inserito il nome!
Chiamo la funzione saluto con parametro:
Ciao, John Doe!
Questa è una funzione parametrica!
```


### stato di uscita da una funzione
       
| Modalità  | Comando | Note | 
| :---: | --- | --- |
| esplicito | return <valore> | return si scrive alla fine della funzione e deve restituire un valore intero. |
| implicito |  - | si sfrutta l'exit status dell'ultima funzione utilizzata (l'exit status vale 0 se OK, altrimenti restituisce il codice di errore) |


Esempio con la modalità esplicita:

```bash
# saluto.sh

saluto ()
{
  if [ -z "$1" ]
    then
         printf "Non è stato inserito il nome! \n"
    else
         printf "Ciao, $1!\nQuesta è una funzione parametrica! \n"
  fi

  return 35
}

printf "Chiamo la funzione saluto senza parametro: \n"
saluto
printf "Chiamo la funzione saluto con parametro: \n"
saluto "John Doe"

printf "Il valore di ritorno della funzione è $? \n"  # $? contiene il valore di ritorno
                                                      # dell'ultima funzione o comando
                                                      # lanciato
```

Output: 

```bash
$ ./saluto.sh
Chiamo la funzione saluto senza parametro:
Non è stato inserito il nome!
Chiamo la funzione saluto con parametro:
Ciao, John Doe!
Questa è una funzione parametrica!
Il valore di ritorno della funzione è 35
```


Esempio con la modalità implicita:


```bash
# saluto_semplce.sh

saluto ()
{
  printf "Ciao! \n"

}

saluto
printf "Il valore di ritorno della funzione è $? \n"
```

Output: 

```bash
$ ./saluto_semplice.sh
Ciao!
Il valore di ritorno della funzione è 0
```


### Assegnare una funzione ad una variabile

```bash
funzione()
{
  <istruzioni>
}

variabile=$(funzione $parametro1 $parametro_n)

echo $variabile
printf "$variabile"
```

Esempio:

```bash
# maggiore.sh

maggiore ()
{
  if [[ "$1" -gt "$2" ]]
    then
        risultato=$1
    elif [[ "$2" -gt "$1" ]]
      then
          risultato=$2
      else
          risultato=0
  fi

  echo $risultato
}


printf "Comparazione di due numeri \n\n"
printf "Inserisci il primo numero: "
read primo
printf "Inserisci il secondo numero: "
read secondo

valore=$(maggiore $primo $secondo) # posso associare una funzione ad una variabile!


if [[ "$valore" -eq 0 ]]
  then
      risposta="uguali"
  else
      risposta=$valore
fi

printf "Il maggiore tra $primo e $secondo è: $risposta \n"
```

Output: 

```bash
$ ./maggiore.sh
Comparazione di due numeri

Inserisci il primo numero: 2
Inserisci il secondo numero: 3
Il maggiore tra 2 e 3 è: 3
```


### Lo scope delle variabili nelle funzioni

#### variabili globali

Di default, le variabili sono sempre globali.
Le variabili definite fuori dalle funzioni sono visibili da quest'ultime indistintamente.


#### variabili locali

Le variabili sono visibili solo all'interno della funzione se sono definite come local.
Altrimenti sono visibili anche al di fuori della funzione anche se definite in essa.


#### Esempio di variabili globali e locali

Esempio:

```bash
# scope.sh

COSTANTE="Sono una variabile globale"

test_variabili()
{
  locale="Sono una variabile locale! "
  local vera_locale="Io sono la vera variabile locale XD!"

  printf "Cosa contiene la variabile globale? $COSTANTE \n"
  printf "Cosa contiene la variabile locale? $locale \n"
  printf "Cosa contiene la variabile locale? $vera_locale \n"
}

printf "Vediamo cosa vede la funzione 'test_variabili': \n"
test_variabili

printf "Vediamo cosa vede lo script come variabili: \n"
printf "Cosa contiene la variabile globale? $COSTANTE \n"
printf "Cosa contiene la variabile locale? $locale \n"
printf "Cosa contiene la variabile locale? $vera_locale \n"
```

Output: 

```bash
$ ./scope.sh
Vediamo cosa vede la funzione 'test_variabili':
Cosa contiene la variabile globale? Sono una variabile globale
Cosa contiene la variabile locale? Sono una variabile locale!
Cosa contiene la variabile locale? Io sono la vera variabile locale XD!
Vediamo cosa vede lo script come variabili:
Cosa contiene la variabile globale? Sono una variabile globale
Cosa contiene la variabile locale? Sono una variabile locale!
Cosa contiene la variabile locale? # L'output è vuoto perchè non può leggere una variabile 
                                   # definita come local!
```


## Gestire le date

```bash
date 
```

Esempio:

```bash
$ date
Mer  1 Mag 2019 99:99:99 CEST
```

### Giorno, mese, anno

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


## Gestione della rete

### Informazioni su di un host

```bash
host <nome host>
```

Esempio:

```bash
$ host google.com
google.com has address 216.58.206.142
google.com has IPv6 address 2a00:1450:4009:811::200e
google.com mail is handled by 20 alt1.aspmx.l.google.com.
google.com mail is handled by 10 aspmx.l.google.com.
google.com mail is handled by 50 alt4.aspmx.l.google.com.
google.com mail is handled by 30 alt2.aspmx.l.google.com.
google.com mail is handled by 40 alt3.aspmx.l.google.com.
```


### Verificare se un sistema è raggiungibile

```bash
ping <nome host>
```

Esempio:

```bash
$ ping localhost
PING localhost (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=128 time=0.993 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=128 time=2.04 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=128 time=1.90 ms
64 bytes from localhost (127.0.0.1): icmp_seq=4 ttl=128 time=1.84 ms
...
--- localhost ping statistics ---
12 packets transmitted, 12 received, 0% packet loss, time 11008ms
rtt min/avg/max/mdev = 0.993/2.064/2.949/0.460 ms
```


## Connettersi ad un server remoto

### Connessione via FTP

#### Connettersi ad un server via ftp

```bash
ftp <utente>@<server>
ftp <utente>@<indirizzo ip>

```

Esempio:

```bash
$ ftp giandoe@miodominio.com
Connected to miodominio.com
Password:
Login successful.
```

#### Comandi utili

| Comando  | Significato | 
| :---: | --- | 
| cd  | cambia la cartella remota  | 
| lcd  | cambia la cartella sul tuo sistema  | 
| ls | visualizza i file presenti nella cartella remota | 
| pwd  | mostra il path in cui ci si trova nella cartella remota  | 
| mkdir  | crea una nuova cartella remota  | 
| rmdir  | cancella una cartella remota  | 
| get | copia un file dalla cartella remota a quella locale  | 
| mget  | copia più file dalla cartella remota a quella locale  | 
| put | copia un file dalla cartella locale a quella remota  | 
| mput | copia più file dalla cartella locale a quella remota  | 
| quit  | esci dal server remoto  | 


### Connessione via SSH

#### Connettersi ad un server remoto via SSH

```bash
ssh <utente>@<server>            # Se non hai da specificare una porta
ssh -p <porta> <utente>@<server> # Se hai una porta da specificare
```

Esempio:

```bash
$ssh -p 8844 giandoe@mioserver.com
```


#### Lanciare un comando via SSH


```bash
ssh <utente>@<server> '<comando>'
ssh -p <porta> <utente>@<server> '<comando>'
```

Esempio:

```bash
$ssh -p 8844 giandoe@mioserver.com 'date'
Tue May  8 23:34:26 DST 2019
```


## Gestione utenti

### Visualizzare il numero di utenti nel sistema

```bash
users
```

Esempio:

```bash
$ users
giandoe
iandoe
testman
```


### Visualizzare il gruppo a cui appartiene il proprio utente  

```bash
groups
```

Esempio:

```bash
$ groups
sudo adm cdrom 
```


### Creare un nuovo utente

```bash
useradd <nome utente> # Creo l'utente
passwd <nome utente>  # Creo la password per l'utente
```

Esempio:

```bash
$ useradd johndoe
$ passwd johndoe
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```


### Cancellare un utente  

```bash
userdel <nome utente>    # cancella solo l'utenza
userdel -r <nome utente> # cancella l'utenza e la relativa home
```

Esempio:

```bash
$ userdel -r johndoe
```


## Gestione processi

### Elenco dei processi attivi

```bash
ps     # Elenco dei processi attivi

ps -ef # Elenco dei processi attivi con maggiori dettagli

ps aux # Come sopra!
```

Esempio:

```bash
$ ps
  PID TTY          TIME CMD
    4 tty1     00:00:00 bash
   44 tty1     00:00:00 ps
$
$ ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 09:17 ?        00:00:00 /init ro
root         3     1  0 09:17 tty1     00:00:00 /init ro
ubuntu       4     3  0 09:17 tty1     00:00:00 -bash
ubuntu      45     4  0 10:26 tty1     00:00:00 ps -ef
$
$ ps -aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.0   8312   132 ?        Ss   09:17   0:00 /init ro
root         3  0.0  0.0   8312    96 tty1     Ss   09:17   0:00 /init ro
ubuntu       4  0.0  0.0  15020  3308 tty1     S    09:17   0:00 -bash
ubuntu      46  0.0  0.0  15668  1864 tty1     R    10:26   0:00 ps -aux

```


### Visualizzare un cruscotto con tutti i processi attivi

```bash
top
```

Esempio:

```bash
$ top
top - 23:29:13 up  1:11,  0 users,  load average: 0.52, 0.58, 0.59
Tasks:   4 total,   1 running,   3 sleeping,   0 stopped,   0 zombie
%Cpu(s):  2.7 us,  0.9 sy,  0.0 ni, 95.9 id,  0.0 wa,  0.5 hi,  0.0 si,  0.0 st
KiB Mem :  7822468 total,  2940072 free,  4645920 used,   236476 buff/cache
KiB Swap: 12582912 total, 12503128 free,    79784 used.  3035692 avail Mem

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
    1 root      20   0    8312    132    104 S   0.0  0.0   0:00.10 init
    3 root      20   0    8312     96     52 S   0.0  0.0   0:00.00 init
    4 ubuntu    20   0   15020   3304   3216 S   0.0  0.0   0:00.10 bash
   67 ubuntu    20   0   15904   1940   1400 R   0.0  0.0   0:00.01 top
```


### Tenere un comando attivo anche quando l'utente è disconnesso

```bash
nohup <comando>   # comando attivo anche se l'utente è disconnesso

nohup <comando> & # comando attivo in background anche se l'utente è disconnesso
```

Esempio:

```bash
$ nohup ping -i localhost
nohup: ignoring input and appending output to 'nohup.out'

$ nohup ping localhost > nohup.log
nohup: ignoring input and redirecting stderr to stdout
$
$ cat nohup.log
PING localhost (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=128 time=0.751 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=128 time=1.68 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=128 time=1.68 ms
[...]

$ nohup ping -c 4 localhost > nohup.log &
[1] 118
$ nohup: ignoring input and redirecting stderr to stdout
$ cat nohup.log
PING localhost (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=128 time=0.763 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=128 time=1.92 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=128 time=1.93 ms
64 bytes from localhost (127.0.0.1): icmp_seq=4 ttl=128 time=2.58 ms

--- localhost ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3002ms
rtt min/avg/max/mdev = 0.763/1.801/2.581/0.657 ms
[1]+  Done                    nohup ping -c 4 localhost > nohup.log
```


### Eseguire un comando ripetutamente

```bash
watch <comando>                      # Ripete il comando ogni 2 secondi

watch -n <numero secondi> <comando>  # Ripete il comando ogni <numero secondi>
```

Esempio:

```bash
$ watch -n3  tail messages.log       
```


### Terminare forzatamente un processo

```bash
kill <nome processo>
kill -15 <pid processo> # Metodo più "dolce" per terminare un processo
kill -9 <pid processo>  # Termina immediatamente il processo
```

Esempio:

```bash
$kill -15 1234
```


## Informazioni sul sistema

### Visualizzare le specifiche del sistema

```bash
uname
```

uname, in aggiunta alle seguenti opzioni, permette di avere più informazioni sul sistema:

| Opzione  | Esempio | Significato | 
| :---: | --- | --- |
| -a | uname -a | mostra le informazioni dettagliate |
| -p | uname -p | mostra le informazioni sul processore |
| -s | uname -s | mostra il nome del sistema operativo |
| -r | uname -r | mostra la release del sistema operativo |

Esempio:

```bash
$uname -a 
Linux Ubuntu blah blah blah
```
