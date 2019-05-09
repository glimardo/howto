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

### Ricercare nel testo

### Uscire da Vi

#### Uscire senza salvare

:q!

#### Salvare il file

:w!

#### Salvare con nome

:w nuovo_nome_file

#### Uscire e salvare il file

ZZ



```

```
