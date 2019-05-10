VI (bozza)
===

<!-- toc -->
Indice
======

<!-- /toc -->

## Aprire un file

```bash
vi <nome file> # Se non esiste il file lo crea. 
               # Altrimenti lo apre come nuovo
```


## Modalità di utilizzo

### Comando  

In questa modalità potrai:
* copiare testo
* incollare testo
* cancellare testo
* sostituire testo
e dare tutti i comandi che ti permettono di gestire al meglio il testo che hai di fronte.


### Inserimento  

In questa modalità potrai inserire del testo.

### Spostarsi tra le due modalità

Per spostarsi dalla modalità comandi a quella di inserimento, premi i.
In basso a sinistra dell'editor, vedrai apparire la scritta "-- INSERT --"
Per spostarti dalla modalità inserimento a quella comandi, premi esc.


## Gestione di un file

### Muoversi dentro vi  

Vi è nato prima delle frecce posizionali della tastiera (!), pertanto è possibile spostarsi nel file
usando i seguenti tasti:

| Tasto  | Significato | 
| :---: | --- | 
| k | muove il cursore su di una riga |
| j | muove il cursore giù di una riga |
| l | muove il cursore di un carattere a destra |
| h | muove il cursore di un carattere a sinistra |
| w | muove il cursore verso la parola subito a destra |
| b | muove il cursore verso la parola subito a sinistra |
| e | muove il cursore alla fine della parola |
| 0 | muove il cursore all'inizio della riga |
| $ | muove il cursore alla fine della riga |
| H | muove il cursore alla prima parola della prima riga |
| L | muove il cursore alla prima parola dell'ultima riga |
| CTRL + f  | muove il cursore di una pagina giù |
| CTRL + b  | muove il cursore di una pagina su |


### Editare il testo  

Per editare il testo scritto, puoi usare i seguenti tasti:

| Tasto  | Significato | 
| :---: | --- | 
| i | permette di inserire il testo in Vi |
| a | aggiungi del testo dopo la parola su cui sei (vai in "append") |
| r | modifica il carattere su cui ti trovi |
| o | va alla riga successiva a quella corrente e permette subito di scrivere |
| x | cancella la lettera su cui ci si trova |
| d | cancella la parola su cui ci si trova |
| dd | cancella la riga su cui ci si trova |
| d^ | cancella dalla posizione corrente fino all'inizio della riga |
| d$ | cancella dalla posizione corrente fino alla fine della riga |
| dw | cancella dalla posizione corrente fino alla fine della parola |
|<numero>dd | cancella il <numero> di righe indicate |
| u | annulla l'ultima cancellazione effettuata |
| p | incolla il carattere/parola/riga che hai cancellato precedentemente |


### Ricercare nel testo  

Per ricercare nel testo, puoi usare le seguenti combinazioni
(ricordati di premere prima ESC!):

| Tasto  | Significato | 
| :---: | --- | 
| /<testo da ricercare> | cerca dalla posizione in cui ti trovi in giù |
| ?<testo da ricercare> | cerca dalla posizione in cui ti trovi in sù |
| n | continua a cercare dal testo in cui ti trovi in giù |
| N | continua a cercare dal testo in cui ti trovi in sù |


### Uscire da Vi  

Se vuoi salvare o meno il file editato, in Vi devi usare uno dei seguenti comandi
(ricordati di premere ESC prima di digitare questi comandi!):

| Comando  | Significato | 
| :---: | --- | 
| :q! | esci senza salvare  |
| :w | salva il file |
| :w <nome file> | salva il file con un altro nome |
| :e | ricarica il file salvato  |
| :wq | salva ed esce da Vi |  
| ZZ | salva ed esce da Vi |
  
  
### Configurazioni utili  

Vi può essere configurato utilizzando i seguenti comandi:

| Comando  | Significato | 
| :---: | --- | 
| :set all | visualizza tutte le configurazioni che possono essere applicate |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
