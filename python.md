PYTHON (bozza)
======

<!-- toc -->
Indice
======
- [I FONDAMENTALI](#i-fondamentali)
  * [Commenti](#commenti)
  * [Tipizzazione dinamica](#tipizzazione-dinamica)
  * [Variabili](#variabili)
  * [Variabili: come dare i nomi](#variabili-come-dare-i-nomi)
  * [Variabili: stilistica](#variabili-stilistica)
  * [Parole riservate - *Keywords* -](#parole-riservate---keywords--)
  * [Print](#print)
  * [Input](#input)
- [GLI OPERATORI](#gli-operatori)
  * [Operatori aritmetici](#operatori-aritmetici)
  * [Operatori di confronto](#operatori-di-confronto)
  * [Operatori booleani](#operatori-booleani)
  * [Operatori binari](#operatori-binari)
  * [Operatori di concatenazione](#operatori-di-concatenazione)
  * [Operatore is](#operatore-is)
- [TIPI DI DATI](#tipi-di-dati)
  * [Numerici](#numerici)
  * [Stringhe](#stringhe)
    + [Le stringhe sono immutabili](#le-stringhe-sono-immutabili)
    + [Indicizzazione dei caratteri nelle stringhe](#indicizzazione-dei-caratteri-nelle-stringhe)
    + [Slicing: affetta la stringa!](#slicing-affetta-la-stringa)
    + [Lunghezza di una stringa](#lunghezza-di-una-stringa)
    + [Concatenare le stringhe](#concatenare-le-stringhe)
    + [Ricerare nelle stringhe](#ricerare-nelle-stringhe)
    + [Sostituzione in una stringa](#sostituzione-in-una-stringa)
    + [Eliminare gli spazi in una frase](#eliminare-gli-spazi-in-una-frase)
    + [Dividere gli elementi di una stringa](#dividere-gli-elementi-di-una-stringa)
    + [Creare una stringa da più elementi](#creare-una-stringa-da-più-elementi)
    + [Cambiare la stringa tutta in MAIUSCOLO o minuscolo](#cambiare-la-stringa-tutta-in-maiuscolo-o-minuscolo)
    + [Come sapere se la stringa contiene caratteri alfanumerici](#come-sapere-se-la-stringa-contiene-caratteri-alfanumerici)
    + [Formattazione di una stringa](#formattazione-di-una-stringa)
    + [Interpolazione di una stringa](#interpolazione-di-una-stringa)
- [LE STRUTTURE DATI](#le-strutture-dati)
  * [Liste](#liste)
    + [Creazione di una lista](#creazione-di-una-lista)
    + [Visualizzare una lista](#visualizzare-una-lista)
    + [Visualizzare un elemento di una lista](#visualizzare-un-elemento-di-una-lista)
    + [Aggiungere un elemento in una lista](#aggiungere-un-elemento-in-una-lista)
    + [Aggiungere più elementi ad una lista](#aggiungere-più-elementi-ad-una-lista)
    + [Rimuovere un elemento da una lista](#rimuovere-un-elemento-da-una-lista)
    + [Rimuovere tutti gli elementi da una lista](#rimuovere-tutti-gli-elementi-da-una-lista)
    + [Dividere gli elementi di una stringa in una lista](#dividere-gli-elementi-di-una-stringa-in-una-lista)
    + [Contare quanti elementi sono presenti in una lista](#contare-quanti-elementi-sono-presenti-in-una-lista)
    + [Verificare se un elemento è presente in una lista](#verificare-se-un-elemento-è-presente-in-una-lista)
    + [Concatenare più liste](#concatenare-più-liste)
  * [Dizionari](#dizionari)
    + [Creazione di un dizionario](#creazione-di-un-dizionario)
    + [Visualizzare un dizionario](#visualizzare-un-dizionario)
    + [Accedere al valore di una chiave](#accedere-al-valore-di-una-chiave)
    + [Modificare il valore di una chiave](#modificare-il-valore-di-una-chiave)
    + [Visualizzare la lista di coppie di chiave-valore presenti nel dizionario](#visualizzare-la-lista-di-coppie-di-chiave-valore-presenti-nel-dizionario)
    + [Visualizzare solo le chiavi presenti nel dizionario](#visualizzare-solo-le-chiavi-presenti-nel-dizionario)
    + [Visualizzare solo i valori presenti nel dizionario](#visualizzare-solo-i-valori-presenti-nel-dizionario)
    + [Cancellare una coppia chiave-valore](#cancellare-una-coppia-chiave-valore)
    + [Cancellare tutto il contenuto di un dizionario](#cancellare-tutto-il-contenuto-di-un-dizionario)
    + [Contare quanti elementi sono presenti in un dizionario](#contare-quanti-elementi-sono-presenti-in-un-dizionario)
  * [Tuple](#tuple)
    + [Creazione di una tupla](#creazione-di-una-tupla)
    + [Visualizzare una tupla](#visualizzare-una-tupla)
    + [Visualizzare un elemento in una tupla](#visualizzare-un-elemento-in-una-tupla)
    + [Sovrascrivere un elemento](#sovrascrivere-un-elemento)
    + [Rimuovere un elemento da una tupla](#rimuovere-un-elemento-da-una-tupla)
    + [Ordinare gli elementi di una tupla](#ordinare-gli-elementi-di-una-tupla)
    + [Verificare se un elemento è presente in una tupla](#verificare-se-un-elemento-è-presente-in-una-tupla)
    + [Concatenare più tuple](#concatenare-più-tuple)
    + [Contare quanti elementi sono presenti in una tupla](#contare-quanti-elementi-sono-presenti-in-una-tupla)
  * [Set](#set)
    + [Creazione di un set](#creazione-di-un-set)
    + [Visualizzare una set](#visualizzare-una-set)
    + [Eliminare duplicati con un set](#eliminare-duplicati-con-un-set)
    + [Aggiungere un elemento in un set](#aggiungere-un-elemento-in-un-set)
    + [Rimuovere un elemento da un set](#rimuovere-un-elemento-da-un-set)
    + [Rimuovere tutti gli elementi da un set](#rimuovere-tutti-gli-elementi-da-un-set)
    + [Ordinare gli elementi di un set](#ordinare-gli-elementi-di-un-set)
    + [Contare quanti elementi sono presenti in un set](#contare-quanti-elementi-sono-presenti-in-un-set)
    + [Visualizzare se un elemento è presente in un set](#visualizzare-se-un-elemento-è-presente-in-un-set)
    + [Differenza tra set](#differenza-tra-set)
    + [Intersezione tra set](#intersezione-tra-set)
    + [Differenza simmetrica tra set](#differenza-simmetrica-tra-set)
    + [Unione tra set](#unione-tra-set)
    + [Operazioni relazionali su set](#operazioni-relazionali-su-set)
- [LA LOGICA](#la-logica)
  * [L'istruzione if](#listruzione-if)
    + [Else ed elif](#else-ed-elif)
  * [Ciclo for](#ciclo-for)
    + [range](#range)
      - [range(valore minimo, valore massimo)](#rangevalore-minimo-valore-massimo)
      - [range(valore)](#rangevalore)
      - [range(valore_minimo, valore_massimo, passo)](#rangevalore_minimo-valore_massimo-passo)
    + [Ciclo for con iterazione inversa](#ciclo-for-con-iterazione-inversa)
    + [Ciclo for dentro un ciclo for](#ciclo-for-dentro-un-ciclo-for)
    + [Ciclo for e liste](#ciclo-for-e-liste)
    + [Ciclo for e i dizionari](#ciclo-for-e-i-dizionari)
    + [Ciclo for e le tuple](#ciclo-for-e-le-tuple)
    + [Ciclo for e set](#ciclo-for-e-set)
  * [Ciclo while](#ciclo-while)
  * [Break](#break)
    + [Break con il ciclo for](#break-con-il-ciclo-for)
    + [Break con il ciclo while](#break-con-il-ciclo-while)
  * [Continue](#continue)
    + [Continue con il ciclo for](#continue-con-il-ciclo-for)
    + [Continue con il ciclo while](#continue-con-il-ciclo-while)
- [LE COMPREHENSION](#le-comprehension)
  * [Come si crea una comprehension per la lista *-  list comprehension -*](#come-si-crea-una-comprehension-per-la-lista----list-comprehension--)
  * [Come si crea una comprehension per il dizionario *-  dict comprehension -*](#come-si-crea-una-comprehension-per-il-dizionario----dict-comprehension--)
  * [Come si crea una comprehension per il set *-  set comprehension -*](#come-si-crea-una-comprehension-per-il-dizionario----dict-comprehension--)
- [LA GESTIONE DEGLI ERRORI](#la-gestione-degli-errori)
  * [Errori di sintassi](#errori-di-sintassi)
  * [Eccezioni](#eccezioni)
  * [Gestire le eccezioni con try/except](#gestire-le-eccezioni-con-tryexcept)
    + [Gestione delle eccezioni multiple](#gestione-delle-eccezioni-multiple)
    + [Dare un nome all'istanza dell'eccezione](#dare-un-nome-allistanza-delleccezione)
    + [Gestire più eccezioni contemporaneamente](#gestire-più-eccezioni-contemporaneamente)
    + [Gestire le eccezioni con raise](#gestire-le-eccezioni-con-raise)
    + [Utilizzo della clausola else](#utilizzo-della-clausola-else)
    + [Utilizzo della clausola finally](#utilizzo-della-clausola-finally)
- [SCRIPTING](#scripting)
  * [Cosa utilzzare per scrivere uno script in Python](#cosa-utilzzare-per-scrivere-uno-script-in-python)
  * [Come eseguire uno script](#come-eseguire-uno-script)
  * [Come rendere eseguibile uno script](#come-rendere-eseguibile-uno-script)
    + [Passare parametri ad uno script](#passare-parametri-ad-uno-script)
- [FUNZIONI](#funzioni)
  * [Cosa sono le funzioni](#cosa-sono-le-funzioni)
  * [Lo scope delle variabili nelle funzioni](#lo-scope-delle-variabili-nelle-funzioni)
    + [globals() e locals()](#globals-e-locals)
- [MODULI](#moduli)
  * [Creazione di un modulo](#creazione-di-un-modulo)
  * [Importare un modulo](#importare-un-modulo)
  * [Importare gli oggetti di un modulo](#importare-gli-oggetti-di-un-modulo)
- [LA VARIABILE GLOBALE \_\_name\_\_](#la-variabile-globale-__name__)
- [LA GESTIONE DEI FILE](#la-gestione-dei-file)
  * [Leggere un file](#leggere-un-file)
    + [Leggere un file tutto in una volta](#leggere-un-file-tutto-in-una-volta)
    + [Leggere un file riga per riga](#leggere-un-file-riga-per-riga)
  * [Scrivere un file](#scrivere-un-file)
    + [Scrivere in un file](#scrivere-in-un-file)
    + [Aggiungere una riga ad un file già esistente](#aggiungere-una-riga-ad-un-file-gi%C3%A0-esistente)
  * [Eliminare un file](#eliminare-un-file)
  * [Rinominare un file](#rinominare-un-file)
  * [Copiare un file](#copiare-un-file)
  * [Spostare un file](#spostare-un-file)
- [LA GESTIONE DEI FILE CSV](#la-gestione-dei-file-csv)
  * [Leggere un file csv](#leggere-un-file-csv)
  * [Scrivere un file csv](#scrivere-un-file-csv)
- [LA GESTIONE DEI FILE JSON](#la-gestione-dei-file-json)
  * [Scrivere un file json](#scrivere-un-file-json)
  * [Leggere un file json](#leggere-un-file-json)
- [PROGRAMMAZIONE AD OGGETTI (OOP)](#programmazione-ad-oggetti-oop)
  * [Classe](#classe)
    + [Definizione di una classe](#definizione-di-una-classe)
    + [Inizializzare una classe](#inizializzare-una-classe)
    + [Aggiungere attributi di classe](#aggiungere-attributi-di-classe)
    + [Aggiungere metodi di classe](#aggiungere-metodi-di-classe)
    + [Instanziare una classe](#instanziare-una-classe)
      - [Accedere ai metodi implementati](#accedere-ai-metodi-implementati)
  * [Ereditarietà](#ereditarietà)
- [Polimorfismo](#polimorfismo)
  * [Override - Sovrascrivere le funzionalità di una classe](#override-sovrascrivere-le-funzionalit-di-una-classe)
  * [Overloading - Comportamenti differenti in base ai parametri passati](#overloading-comportamenti-differenti-in-base-ai-parametri-passati)
<!-- /toc -->

## I FONDAMENTALI


### Commenti

```python
# Questo è un commento su di una riga

'''
   Questo è un commento
   su più righe!
'''

"""
   Posso usare anche i doppi apici
   per fare commenti su più righe!
"""
```


### Tipizzazione dinamica

In fase di esecuzione del codice, in base al valore che tu
hai dato alla variabile, Python ne determinerà il relativo tipo.

```python
>>> numero = 1
>>> type(numero)
<class 'int'>
>>>
>>> frase = "Funziona la tipizzazione dinamica!"
>>> type(frase)
<class 'str'>
>>>
```

### Variabili

```python
# Nota: in Python non si mette nessun ; alla fine!

variabile = "sono una variabile"
nuova_variabile = 'Anche io sono una variabile!"
numero = 1
vuoto = ''
```


### Variabili: come dare i nomi

Nonostante ci sia grande libertà di fantasia per dare
i nomi alle variabili, ci sono alcune regole da rispettare:

| Regola | Valido | Non valido |
| ------ | ------ | ------ |
|Si usa solo una sola parola e senza spazi| variabile| varia bile|
|Si usano solo lettere, numeri e _ |variabile_1_valida| variabile$non valida!|
|il nome della variabile inizia solo con una lettera| variabile_valida| 1_variabile|


### Variabili: stilistica

In Python è meglio seguire alcune regole base definite nello [Style Guide PEP8]:

|Stile| Convenzionale| Non convenzionale|
| ------ | ------ | ------ |
|CamelCase | meglio_non_usarlo | MeglioNonUsarlo |
|Prima lettera della variabile | si_usa_minuscola | Non_si_usa_maiuscola |
|Nome costanti | COSTANTE_SEMPRE_IN_MAIUSCOLO | costanteNonInMaiuscolo|
|Variabili "*private*" | _inizia_con_un_trattino_basso | scrivo_come_voglio |

*Nota: le [variabili private] in Python **non esistono**. 
Per convenzione, le variabili che si vogliono identificare come private, le si scrivono con un trattino basso iniziale.
In questo modo vengono trattate come parte "non pubblica" da funzioni, metodi o data member

[Style Guide PEP8]: <https://www.python.org/dev/peps/pep-0008/#naming-conventions>
[variabili private]: <https://docs.python.org/3/tutorial/classes.html#private-variables>


### Parole riservate - *Keywords* -

In Python, ci sono delle parole che **non possono** essere utilizzate come nomi di variabili.
Infatti, servono a definire la struttura del linguaggio stesso e sono:

```
False      class      finally    is         return
None       continue   for        lambda     try
True       def        from       nonlocal   while
and        del        global     not        with
as         elif       if         or         yield
assert     else       import     pass
break      except     in         raise
```


### Print


```python
# Con print posso vedere in output il contenuto di una variabile od espressione
frase = "Questa frase sarà stampata a video!"

>>> print(frase)
Questa frase sarà stampata a video!
```


### Input

```python
>>> nome = input("Ciao, come ti chiami? ") # salvo qui le informazioni fornite dall'utente
Ciao, come ti chiami? Gianfranco
>>> print("Ciao " + nome)
Ciao Gianfranco
>>>
```


## GLI OPERATORI

### Operatori aritmetici

| Operatore | Sintassi |
|---|:-:|
| Addizione | a + b | 
| Sottrazione | a - b |
| Moltiplicazione| a * b |
| Potenza | a ** b|
| Divisione | a / b|
| Divisione (cioè restituisce la parte intera) | a // b|
| Modulo (cioè il resto della divisione) | a % b|


### Operatori di confronto

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| == | Uguaglianza. &nbsp; Ritorna vero se sono uguali. Altrimenti Falso | a == b|
| != | Disuguaglianza. &nbsp; Ritorna vero se sono diversi. Altrimenti Falso | a != b | 
| >| Maggiore di. &nbsp; Ritorna vero se il primo numero è maggiore del secondo. Altrimenti Falso | a > b |
| >= | Maggiore o uguale a. &nbsp; Ritorna vero se il primo numero è maggiore o uguale al secondo. Altrimenti Falso | a >= b |
| <| Minore di. &nbsp; Ritorna vero se il primo numero è minore del secondo. Altrimenti Falso | a < b |
| <= | Minore o uguale a. &nbsp; Ritorna vero se il primo numero è minore o uguale al secondo. Altrimenti Falso | a <= b |


### Operatori booleani

```
Nota:

In Python, un oggetto è vero se:
- è diverso da zero
- è la costante True
- non è vuoto

In Python, un oggetto è falso se:
- vale zero
- è la costante False
- è la costante None
- è vuoto

Tips: True è uguale a 1 e False è uguale a 0
```

Operazioni sui booleani:

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| and | Se entrambe le variabili sono valutate True, restituisce il secondo valore. Se la prima variabile che incontra è valutata False, restituisce il relativo valore | a == b|
| or | Se entrambe le variabili sono False, restituisce il secondo valore. Se la prima variabile che incontra è valutata True, restituisce il relativo valore| a or b|
| not | restituisce False se la variabile è True. Viceversa, restituisce True se la variabile è False | not a |

```python
>>> numero = 1
>>> bool(numero)
True
>>> vuoto = ''
>>> bool(vuoto)
False
>>> not True
False
>>> True and False
False
>>> True or False
True
```


### Operatori binari

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| & | Esegue un AND di bit tra due oggetti interi | a & b |
| \| | Esegue un OR di bit tra due oggetti interi | a \| b |
| ^ | Esegue uno XOR (OR esclusivo) di bit tra due oggetti interi | a ^ b |
|<< | Esegue uno shif a sinistra di b posizioni dei bit di a | a << b|
| >> | Esegue uno shif a destra di b posizioni dei bit di a | a >> b|
| ~ | inverte il valore dei bit di a: gli 1 diventano 0 e gli zero 1 | ~a |


### Operatori di concatenazione

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| + | Concatenazione di più oggetti | a + b + c |
| * | Concatenazione multipla: ripete n volte un oggetto | a * n |


### Operatore is

is verifica l'identità tra due elementi:

```
elemento_1 is elemento_2

# Output
True se l'identità degli elementi è la stessa
False se non è la stessa
```

Esempio:

```
>>> 1 == 1.0
True            # 1 è uguale ad 1.0, giusto?
>>> type(1)      
<class 'int'>   # Però 1 è di classe int
>>> type(1.0)  
<class 'float'> # Ed 1.0 è di classe float
>>>
>>> 1 is 1.0   
False           # Quindi un int è diverso da 
>>>             # un float, giusto?
```


## TIPI DI DATI

### Numerici

- interi: i [numeri interi] hanno una precisione illimitata
- booleani: True equivale all'1 e False equivale allo 0
- reali: i [numeri reali] sono i numeri a virgola mobile
- complessi: i [numeri complessi] sono composti da una parte reale ed una immaginaria.

```python
>>> sono_un_numero_grande = 9864552545854584
>>> type(sono_un_numero_grande)
<class 'int'>

>>> type(True)
<class 'bool'>
>>> True == 1
True

>>> pi_greco = 3.14
>>> type(pi_greco)
<class 'float'>
>>> numero_negativo = -1.111
>>> type(numero_negativo)
<class 'float'>

>>> z = 3 + 7j
>>> type(z)
<class 'complex'>
>>>
>>> z.real # estrarre la parte reale
3.0
>>> z.imag # estrarre la parte complessa
7.0
```

[numeri interi]: <https://it.wikipedia.org/wiki/Numero_intero>
[numeri reali]: <https://it.wikipedia.org/wiki/Numero_reale>
[numeri complessi]: <https://it.wikipedia.org/wiki/Numero_complesso>


### Stringhe

Tutto ciò che è racchiuso tra doppi apici o apici singoli, è considerato una stringa:
- "" è una stringa
- ' ' è una stringa
- 'a' è una stringa
- '1' è una stringa

```python
>>> stringa_vuota = ""
>>> type(stringa_vuota)
<class 'str'>
>>>
>>> singolo_spazio = ' '
>>> type(singolo_spazio)
<class 'str'>
>>>
>>> lettera = 'a'
>>> type(lettera)
<class 'str'>
>>>
>>> numero = '1'
>>> type(numero)
<class 'str'>
```


#### Le stringhe sono immutabili

I singoli caratteri di una stringa non possono essere modificati.
Se ci provi, avrai un errore:

```python
>>> stringa = "Non puoi cambiare un singolo carattere"
>>> stringa[0]
'N'
>>> stringa[0] = "B"
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'str' object does not support item assignment
>>>
```

#### Indicizzazione dei caratteri nelle stringhe

In Python, una stringa è vista come una sequenza di caratteri a cui si può accedere singolarmente.
Ogni carattere è identificato da un numero di posizione che inizia per zero:

|  | indice | 0 | 1 | 2 | 3 | 4 | 5 | | 
|---|---|---|---|---|---|---|---|---|
| stringa = | " | P | y | t | h | o | n | " |

```python
>>> stringa = "Python"
>>>
>>> stringa[0]
'P'
>>> stringa[1]
'y'
>>> stringa[2]
't'
>>> stringa[3]
'h'
>>> stringa[4]
'o'
>>> stringa[5]
'n'
```

Per avere i caratteri partendo dall'ultima posizione, si utilizza un indice negativo 
che partirà dall'ultimo carattere ed avrà come posizione -1:

|  | indice | -6 | -5 | -4 | -3 | -2 | -1 | | 
|---|---|---|---|---|---|---|---|---|
| stringa = | " | P | y | t | h | o | n | " |

```python
>>> stringa[-1]
'n'
>>> stringa[-2]
'o'
>>> stringa[-3]
'h'
>>> stringa[-4]
't'
>>> stringa[-5]
'y'
>>> stringa[-6]
'P'
```


#### Slicing: affetta la stringa!

con lo slicing - affettare - si accedere ad una sequenza consecutiva di caratteri:

|  | indice | 0 | 1 | 2 | 3 | 4 | 5 | | 
|---|---|---|---|---|---|---|---|---|
| stringa = | " | P | y | t | h | o | n | " |

```python
>>> stringa
'Python'
>>>
>>> stringa[0:3] # il carattere che corrisponde all'indice finale è escluso dall'estrazione
'Pyt'
>>> stringa[3:6]
'hon'
>>> stringa[2:4]
'th'
>>> stringa[-6:-3]
'Pyt'
>>> stringa[-3:-1]
'ho'
>>> stringa[0:] # se ometti l'indice finale, verrà estratto tutto a partire dall'indice iniziale fino alla fine della stringa
'Python'
>>> stringa[:6] # se ometti l'indice iniziale, verrà estratto tutto dall'inizio fino all'indice finale
'Python'
>>> stringa[:] # Se ometti entrambi gli indici, estrai tutta la stringa
'Python'
>>>
>>> stringa[2:] 
'thon'
>>> stringa[:4]
'Pyth'
```


#### Lunghezza di una stringa

```python
>>> frase = "Questa è una frase!"
>>> len(frase)
19
```


#### Concatenare le stringhe

```python
>>> stringa_1 = "Noi siamo un insieme"
>>> stringa_2 = "di stringhe"
>>> stringa_3 = "concatenate!"
>>>
>>> frase = stringa_1 + " " + stringa_2 + " " + stringa_3 # Le stringhe si concatenano con il +
>>>
>>> frase
'Noi siamo un insieme di stringhe concatenate!'
>>>
```


#### Ricerare nelle stringhe

```python
>>> frase = "Questa è una frase di esempio per aiutarti a cercare qualche parola"
>>>
>>> frase.find("esempio")
22
>>>
>>> frase.find("pippo") # Se la funzione find non trova nulla, restituisce -1
-1
>>>
```


#### Sostituzione in una stringa

```python
>>> frase = "Sostituisci qualche parola"
>>> frase
'Sostituisci qualche parola'
>>>
>>> frase.replace("qualche", "una")
'Sostituisci una parola'
>>>
```


#### Eliminare gli spazi in una frase

```python
>>> frase = "     ma quanti spazi ci sono?     "
>>> frase
'     ma quanti spazi ci sono?     '
>>>
```

```python
>>> frase.strip() # Elimina gli spazi a sinistra e a destra della frase
'ma quanti spazi ci sono?'
>>>
```

```python
>>> frase.lstrip() # Elimina gli spazi solo a sinistra della frase
'ma quanto spazi ci sono?     '
>>>
```

```python
>>> frase.rstrip() # Elimina gli spazi solo a destra della frase
'     ma quanto spazi ci sono?'
>>>
```


#### Dividere gli elementi di una stringa

```python
>>> frutta = "mele pere arance"
>>> frutta.split()
['mele', 'pere', 'arance']
>>>
```

```python
>>> frutta = "mele-pere-arance"
>>> frutta
'mele-pere-arance'
>>> frutta.split(sep="-")   # se specifichi il separatore, verrà utilizzato
['mele', 'pere', 'arance']  # come indicatore per separare gli elementi
>>>
```


#### Creare una stringa da più elementi

```python
>>> " ".join(['mele', 'pere', 'arance'])
'mele pere arance'
>>>
>>> ", ".join(['mele', 'pere', 'arance'])
'mele, pere, arance'
>>>
>>> "-".join(['mele', 'pere', 'arance'])
'mele-pere-arance'
```


#### Cambiare la stringa tutta in MAIUSCOLO o minuscolo

```python
>>> saluto="ciao"
>>> saluto.upper() # trasformo la stringa tutta in maiuscolo
'CIAO'
```

```
>>> saluto="CIAO"
>>> saluto.lower() # trasformo la stringa tutta in minuscolo
'ciao'
```


#### Come sapere se la stringa contiene caratteri alfanumerici

```python
>>> frase = "Quattro4"
>>> frase.isalnum() # verifico se la stringa contiene caratteri alfanumerici
True
>>> frase = "Quattro4!"
>>> frase
'Quattro4!'
>>> frase.isalnum()
False # il ! non è alfanumerico!
>>>
```

```python
>>> frase = "Parola"
>>> frase.isalpha() # verifico se la stringa contiene solo caratteri alfabetici
True
```

```python
>>> frase = "1234"
>>> frase.isdigit() # verifico se la stringa contiene solo caratteri numerici
True
```


#### Formattazione di una stringa

```python
>>> '{} {} {} {}'.format('Questo', 'è un tutorial', 'sulle', 'stringhe!')
'Questo è un tutorial sulle stringhe!'
>>>
>>> '{3} {2} {1} {4} {0}'.format('stringhe', 'posizione', 'cambiare', 'Posso', 'delle')
'Posso cambiare posizione delle stringhe'
>>>
>>> '{personaggio} è nipote di {altro_personaggio}'.format(personaggio='Paperino', altro_personaggio='Zio Paperone')
'Paperino è nipote di Zio Paperone'
>>>
>>> frutta = ['mele', 'arance']
>>> '{fr[0]}'.format(fr=frutta)
'mele'
```

#### Interpolazione di una stringa

```
Solo con Python >=3.6!

f"{stringa}"
```

```python
>>> nome = "Pippo"
>>>
>>> f"Ciao {nome}! Come stai?"
'Ciao Pippo! Come stai?'
>>>
```

```python
>>> f"Con l'interpolazione delle stringhe, posso anche die che {{1 + 2}} fa { 1 + 2}!"
"Con l'interpolazione delle stringhe, posso anche die che {1 + 2} fa 3!"
>>>
```


## LE STRUTTURE DATI


### Liste

```
In Python le liste sono oggetti **mutabili**.
Per chi proviene da altri linguaggi di programmazione, una *lista* è definita come *array*.

Quando usare una lista?
- quando ti serve una collezione di dati eterogenea
- quando vuoi avere dei dati ordinati
- quando hai bisogno di una coda di dati
```

#### Creazione di una lista

```python
>>> sono_una_lista = [1, 2, 3] # Le liste vengono chiamate array in altri linguaggi
>>> sono_una_lista
[1, 2, 3]
>>> anche_io_sono_una_lista = [ 'uno', 'due', 'tre']
>>> anche_io_sono_una_lista
['uno', 'due', 'tre']
>>> lista_mista = [ 1, "due", 3 ]
>>> lista_mista
[1, 'due', 3]
```

#### Visualizzare una lista

```python
>>> mia_lista = [1,2,3,4]
>>>
>>> mia_lista
[1, 2, 3, 4]
>>>
>>> print(mia_lista)
[1, 2, 3, 4]
```


#### Visualizzare un elemento di una lista

|  | indice | |  0 |  | 1 |  | 2 |  | 3 | |  
|---|---|---|---|---|---|---|---|---|---|---|
| mia_lista | = | [ | 1 |, | 2 | , | 3 | , | 4 | ] |

```python
>>> mia_lista = [1,2,3,4]
>>> mia_lista
[1, 2, 3, 4]
>>>
>>> mia_lista[2]
3
>>>
>>> mia_lista[7] # Non puoi cercare un carattere in una posizione che non esiste!
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: list index out of range
```


#### Aggiungere un elemento in una lista

```python
>>> mia_lista = [1, 2, 3]
>>> mia_lista.append(4)
>>> mia_lista
[1, 2, 3, 4]
>>>
>>> mia_lista.insert(1,5) # Posso aggiungere elementi anche in una posizione specifica
>>> mia_lista
[1, 5, 2, 3, 4]
```


#### Aggiungere più elementi ad una lista

```python
>>> mia_lista
[1, 5, 2, 3, 4]
>>>
>>> mia_lista.extend([6, 7, 8, 9])
>>> mia_lista
[1, 5, 2, 3, 4, 6, 7, 8, 9]
```

#### Rimuovere un elemento da una lista

```python
>>> mia_lista
[1, 5, 2, 3, 4, 6, 7, 8, 9]
>>>
>>> mia_lista.remove(4)
>>>
>>> mia_lista
[1, 5, 2, 3, 6, 7, 8, 9]
>>>
>>> mia_lista.remove(10) # Non posso rimuovere un elemento che non c'è!
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: list.remove(x): x not in list
>>>
```


#### Rimuovere tutti gli elementi da una lista

```python
>>> mia_lista
[5, 2, 3, 4, 6, 7, 8]
>>>
>>> mia_lista.clear()
>>>
>>> mia_lista
[]
>>>
```


#### Dividere gli elementi di una stringa in una lista

```python
>>> mia_stringa = "1, 2, 3, 4, 5, 6"
>>> mia_stringa
'1, 2, 3, 4, 5, 6'
>>>
>>> mia_stringa.split()
['1,', '2,', '3,', '4,', '5,', '6']
>>>
>>>
>>> mia_lista =  mia_stringa.split()
>>>
>>> mia_lista
['1,', '2,', '3,', '4,', '5,', '6']
>>>
```


#### Contare quanti elementi sono presenti in una lista

```python
>>> mia_lista = [4,8,9,3,2,1,0]
>>>
>>> len(mia_lista)
7
```


#### Verificare se un elemento è presente in una lista

```python
>>> mia_lista = [1,2,3]
>>> mia_lista
[1, 2, 3]
>>>
>>>
>>> 1 in mia_lista # restituisce True se l'elemento è presente
True
>>>
>>> 4 in mia_lista # restituisce False se l'elemento non è presente
False
```


#### Concatenare più liste

```python
>>> lista_1 = [1,2,3]
>>> lista_2 = [4,5,6]
>>>
>>> lista_3 = lista_1 + lista_2
>>> lista_3
[1, 2, 3, 4, 5, 6]
```


### Dizionari

'''
I dizionari sono delle collezioni **mutabili** e non ordinate di coppie di chiave-valore.
Le chievi dentro un dizionario **devono** essere uniche e permettono di ottenere il valore associato in modo efficace *- hashable -*.

Per chi provenisse da altri linguaggi, i dizionari sono l'equivalente Python delle *tabelle di hash* o degli *array associativi*.

Quando usare un dizionario:
- quando serve una associazione logica tra le coppie chiave-valore
- quando devi accerede velocemente ai dati
- quando hai dei dati che possono cambiare e ti serve che la chiave sia immutabile
'''


#### Creazione di un dizionario

```python
>>> rubrica = { "Tyrion": "123-456", "Cersei": "789-123", "Daenerys": "123-789", "Jon": "345-567" }
>>> rubrica
{'Tyrion': '123-456', 'Cersei': '789-123', 'Daenerys': '123-789', 'Jon': '345-567'}
```


#### Visualizzare un dizionario

```python
>>> rubrica
{'Tyrion': '123-456', 'Cersei': '789-123', 'Daenerys': '123-789', 'Jon': '345-567'}
>>>
>>> print(rubrica)
{'Tyrion': '123-456', 'Cersei': '789-123', 'Daenerys': '123-789', 'Jon': '345-567'}
```


#### Accedere al valore di una chiave

```python
>>> rubrica['Tyrion']
'123-456'
>>> rubrica['Cersei']
'789-123'
>>> rubrica['Daenerys']
'123-789'
>>> rubrica['Jon']
'345-567'
>>>
>>> rubrica.get("Cersei") # Si può usare questa funzione per ottenere il valore di una chiave
'789-123'
```


#### Modificare il valore di una chiave

```python
>>> rubrica['Jon'] = '708-147'
>>> rubrica
{'Tyrion': '123-456', 'Cersei': '789-123', 'Daenerys': '123-789', 'Jon': '708-147'}
>>>
>>>
>>> rubrica['Margaery'] = '340-512' # Se la chiave non fosse presente, 
>>> rubrica                         # verrà creata una nuova coppia chiave-valore
{'Tyrion': '123-456', 'Cersei': '789-123', 'Daenerys': '123-789', 'Jon': '708-147', 'Margaery': '340-512'}
```


#### Visualizzare la lista di coppie di chiave-valore presenti nel dizionario

```python
>>> rubrica.items()
dict_items([('Tyrion', '123-456'), ('Cersei', '789-123'), ('Daenerys', '123-789'), ('Jon', '345-567')])
```


#### Visualizzare solo le chiavi presenti nel dizionario

```python
>>> rubrica.keys()
dict_keys(['Tyrion', 'Cersei', 'Daenerys', 'Jon'])
```


#### Visualizzare solo i valori presenti nel dizionario

```python
>>> rubrica.values()
dict_values(['123-456', '789-123', '123-789', '345-567'])
```


#### Cancellare una coppia chiave-valore

```python
>>> del rubrica["Margaery"]
>>>
>>> rubrica
{'Tyrion': '123-456', 'Daenerys': '123-789', 'Jon': '708-147', 'Cersei': '789-123'}
>>> del rubrica["Pippo"] # Non puoi cancellare una chiave che non esiste!
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
KeyError: 'Pippo'
```


#### Cancellare tutto il contenuto di un dizionario

```python
>>> rubrica.clear()
>>> rubrica
{}
```


#### Contare quanti elementi sono presenti in un dizionario

```python
>>> rubrica = { "Tyrion": "123-456", "Cersei": "789-123", "Daenerys": "123-789", "Jon": "345-567" }
>>> len(rubrica)
4
```


### Tuple

```
Le tuple sono simili alle liste.
La vera differenza tra le due riguarda la tipologia:
mentre le liste sono oggetti mutabili, le tuple sono oggetti **immutabili**.
Quindi, una volta creata una tupla, **non potrai** più modificare il contenuto.

Quando usare le tuple
- quando serve un elenco non mutabile di dati eterogenei
- quando serve salvare un elenco statico di dati
```


#### Creazione di una tupla

```python
>>> arcobaleno = ("rosso", "arancione", "giallo", "verde", "azzurro", "indaco", "viola")
>>> arcobaleno
('rosso', 'arancione', 'giallo', 'verde', 'azzurro', 'indaco', 'viola')
>>> type(arcobaleno)
<class 'tuple'>
>>>
>>> vuota = ()
>>> type(vuota)
<class 'tuple'>
>>>
>>> elenco_numeri = 1, 2, 3, 4
>>> type(elenco_numeri)
<class 'tuple'>
>>>
>>> elenco_lettere = "a", "b",
>>>
>>> type(elenco_lettere)
<class 'tuple'>
```


#### Visualizzare una tupla

```python
>>> arcobaleno
('rosso', 'arancione', 'giallo', 'verde', 'azzurro', 'indaco', 'viola')
```



#### Visualizzare un elemento in una tupla

|  | indice | |  0 |  | 1 |  | 2 |  | 3 | | 4 | | 5 | | 6 | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| arcobaleno | = | [ | 'rosso' |, | 'arancione' | , | 'giallo' | , | 'verde' | , | 'azzurro' | , | 'indaco' | , | 'viola' | ] |

```python
>>> arcobaleno[0]
'rosso'
>>> arcobaleno[5]
'indaco'
```


#### Sovrascrivere un elemento

```python
>>> arcobaleno[0] = "nero"
Traceback (most recent call last): # Non si può sovrascrivere un elemento!
  File "<stdin>", line 1, in <module>
TypeError: 'tuple' object does not support item assignment
>>>
```


#### Rimuovere un elemento da una tupla

```
Non si può! XD
```


#### Ordinare gli elementi di una tupla

```python
>>> numeri = (3,4,5,1,2,3)
>>>
>>> sorted(numeri)
[1, 2, 3, 3, 4, 5]
```


#### Verificare se un elemento è presente in una tupla

```python
>>> arcobaleno
('rosso', 'arancione', 'giallo', 'verde', 'azzurro', 'indaco', 'viola')
>>>
>>> "indaco" in arcobaleno # True se l'elemento si trova nella tupla
True
>>>
>>> "bianco" in arcobaleno  False se l'elemento non si trova nella tupla
False
```


#### Concatenare più tuple

```python
>>> due_numeri = 1,2
>>> tre_numeri = (3,4,5)
>>> altri_numeri = 6,7,
>>>
>>> type(due_numeri)
<class 'tuple'>
>>> type(tre_numeri)
<class 'tuple'>
>>> type(altri_numeri)
<class 'tuple'>
>>>
>>> concateno_tuple = due_numeri + tre_numeri + altri_numeri
>>> concateno_tuple
(1, 2, 3, 4, 5, 6, 7)
>>>
>>> type(concateno_tuple)
<class 'tuple'>
```


#### Contare quanti elementi sono presenti in una tupla

```python
>>> arcobaleno
('rosso', 'arancione', 'giallo', 'verde', 'azzurro', 'indaco', 'viola')
>>>
>>> len(arcobaleno)
7
```


### Set

```
Il set è un parente della lista con alcune differenze:
- è una collezione mutabile e non ordinata di elementi unici
- il suo hash non deve cambiare mai durante il proprio ciclo di vita e può
  essere comparato con altri oggetti. Questa caratteristica è chiamata [hashable]
  
Quando usare set
- quando serve fare del testing sulle membership
- quando occorre eliminare dei duplicati da delle sequenze
- quando occorre eseguire delle operazioni matematiche standard su set quali intersezione, 
  unione, differenza e differenza simmetrica.
```


#### Creazione di un set

```python
>>> primo_set = set([1,2,3])
>>> primo_set
{1, 2, 3}
>>>
>>> secondo_set = set({"uno": 1, "due": 2})
>>> secondo_set
{'due', 'uno'}
>>>
>>> terzo_set = set("parola")
>>> terzo_set
{'o', 'a', 'r', 'l', 'p'}
>>> quarto_set = { 1,2,3, "a", "b", "c"}
>>> quarto_set
{1, 2, 3, 'b', 'a', 'c'}
>>>
>>> set_vuoto = set() 
>>> type(set_vuoto)
<class 'set'>
>>>
>>> set_vuoto = set{} # Un set vuoto si scrive set()
  File "<stdin>", line 1
    set_vuoto = set{}
                   ^
SyntaxError: invalid syntax
```


#### Visualizzare una set

```python
>>> sono_un_set = {1, 2, 3, "a", "parola", ""}
>>> sono_un_set
{'parola', 1, 2, 3, '', 'a'}
```


#### Eliminare duplicati con un set

```python
>>> parola_con_lettere_duplicate = set("massimo")
>>> parola_con_lettere_duplicate
{'o', 's', 'a', 'm', 'i'}
>>>
>>>
>>> fiume_mississippi = set("Mississippi")
>>> fiume_mississippi
{'i', 's', 'M', 'p'}
```


#### Aggiungere un elemento in un set

```python
>>> nuovo_set = set()
>>> nuovo_set.add("prima parola")
>>> nuovo_set
{'prima parola'}
>>> type(nuovo_set)
<class 'set'>
```


#### Rimuovere un elemento da un set

```python
>>> nuovo_set = set()
>>> nuovo_set.add("prima parola")
>>> nuovo_set
{'prima parola'}
>>>
>>> nuovo_set.remove("prima parola")
>>> nuovo_set
set()
```


#### Rimuovere tutti gli elementi da un set

```python
>>> nuovo_set = set("123456")
>>> nuovo_set
{'6', '4', '5', '3', '1', '2'}
>>>
>>> nuovo_set.clear()
>>> nuovo_set
set()
```


#### Ordinare gli elementi di un set

```python
>>> nuovo_set = {5,6,1,4,2,3}
>>> nuovo_set
{1, 2, 3, 4, 5, 6}
>>>
>>> sorted(nuovo_set)
[1, 2, 3, 4, 5, 6]
```


#### Contare quanti elementi sono presenti in un set

```python
>>> nuovo_set = set("123456")
>>> len(nuovo_set)
6
```


#### Visualizzare se un elemento è presente in un set

```python
>>> nuovo_set = {1, 2, 3, 4, 5, 6}
>>> nuovo_set
{1, 2, 3, 4, 5, 6}
>>>
>>> nuovo_set.issuperset([1])
True
>>>
>>> nuovo_set.issuperset([1,2,4])
True
>>> nuovo_set.issuperset([1,0])
False
>>> nuovo_set.issuperset(())
True
```


#### Differenza tra set

```python
>>> primo_set = {1,2,3,4,5,6}
>>> secondo_set = {4,5,6,7,8,9}
>>>
>>> primo_set - secondo_set
{1, 2, 3}
```


#### Intersezione tra set

```python
>>> primo_set = {1,2,3,4,5,6}
>>> secondo_set = {4,5,6,7,8,9}
>>>
>>> primo_set & secondo_set
{4, 5, 6}
```


#### Differenza simmetrica tra set

```python
>>> primo_set = {1,2,3,4,5,6}
>>> secondo_set = {4,5,6,7,8,9}
>>>
>>> primo_set ^ secondo_set
{1, 2, 3, 7, 8, 9}
```


#### Unione tra set

```python
>>> primo_set = {1,2,3,4,5,6}
>>> secondo_set = {4,5,6,7,8,9}
>>>
>>> primo_set | secondo_set
{1, 2, 3, 4, 5, 6, 7, 8, 9}
```


#### Operazioni relazionali su set

|  Operatore | Descrizione | Cosa ritorna | Esempio |
|---|---|---|---|
| == | Uguaglianza tra set| Ritorna True se l'uguaglianza è verificata. Altrimenti False | ```primo_set == secondo_set``` |
| !=  | Diversità tra set | Ritorna True se la diversità è verificata. Altrimenti False| ```primo_set != secondo_set```|
| <  | Primo set minore del secondo | Ritorna True se il primo set è minore del secondo. Altrimenti False| ```primo_set < secondo_set```|
| <= | Primo set minore o uguale al secondo| Ritorna True se il primo set è minore o uguale al secondo. Altrimenti False| ```primo_set <= secondo_set```|
| > | Primo set maggiore del secondo | Ritorna True se il primo set è maggiore del secondo. Altrimenti False| ```primo_set > secondo_set```|
| >= | Primo set maggiore o uguale al secondo| Ritorna True se il primo set è maggiore o uguale al secondo. Altrimenti False| ```primo_set >= secondo_set```|

```python
>>> primo_set = {1,2,3,4,5,6}
>>> secondo_set = {4,5,6,7,8,9}
>>>
>>> primo_set == secondo_set
False
>>> primo_set != secondo_set
True
>>> primo_set < secondo_set
False
>>> primo_set <= secondo_set
False
>>> primo_set > secondo_set
False
>>> primo_set >= secondo_set
False
>>>
>>> secondo_set < primo_set
False
>>> secondo_set <= primo_set
False
>>> secondo_set > primo_set
False
>>> secondo_set >= primo_set
False
```


## LA LOGICA


### L'istruzione if

```python
>>> if 1 + 2 == 3:
...     print("1 + 2 fa 3!")
... 
1 + 2 fa 3!
```


#### Else ed elif

```python
>>> if 1 + 2 == 4:
...     print("Mi sa che devi rifare il calcolo!")
... else:
...     print("Ehm... 1 + 2 fa 3 non 4!")
... 
Ehm... 1 + 2 fa 3 non 4!
```

```python
>>> conto_in_banca = 100
>>> if conto_in_banca > 1000:
...     print("Sei ricco!")
... elif conto_in_banca > 100:           
...     print("Continua a risparmiare!")
... else:                               
...     print("Ehi! Devi risparmiare!")
... 
Ehi! Devi risparmiare!
```


### Ciclo for

```python
>>> frutta = ['mirtilli', 'lamponi', 'mele', 'pere', 'arance']
>>> for frutto in frutta:
...     print(frutto)
... 
mirtilli
lamponi
mele
pere
arance
```


#### range


##### range(valore minimo, valore massimo)

```python
>>> for numero in range(1,10):
...     print(numero)
... 
1
2
3
4
5
6
7
8
9
```


##### range(valore)

```python
>>> for n in range(5):
...     print(n)
... 
0
1
2
3
4
```


##### range(valore_minimo, valore_massimo, passo)

```python
>>> for n in range(1,11,2):
...     print(n)
... 
1
3
5
7
9
```



#### Ciclo for con iterazione inversa

```python
>>> for n in reversed(range(1,5)):
...     print(n)
... 
4
3
2
1
```


#### Ciclo for dentro un ciclo for

```python
>>> for n in range (4):
...     for m in ["a", "b", "c"]:
...         print("n: ", n, "m: ", m)
... 
('n: ', 0, 'm: ', 'a')
('n: ', 0, 'm: ', 'b')
('n: ', 0, 'm: ', 'c')
('n: ', 1, 'm: ', 'a')
('n: ', 1, 'm: ', 'b')
('n: ', 1, 'm: ', 'c')
('n: ', 2, 'm: ', 'a')
('n: ', 2, 'm: ', 'b')
('n: ', 2, 'm: ', 'c')
('n: ', 3, 'm: ', 'a')
('n: ', 3, 'm: ', 'b')
('n: ', 3, 'm: ', 'c')
```


#### Ciclo for e liste

```python
>>> colori = ["rosso", "verde", "giallo", "blu"]
>>> 
>>> for colore in colori:
...     print(colore)
... 
rosso
verde
giallo
blu
```


#### Ciclo for e i dizionari

```python
>>> numeri = { "uno": 1, "due": 2, "tre": 3, "quattro": 4}
>>> 
>>> for numero in numeri.values():
...     print(numero)
... 
4
3
2
1
>>>
>>> for chiave in numeri.keys():
...     print(chiave)
... 
quattro
tre
due
uno
>>>
>>> for chiave in numeri:
...     print(chiave)
... 
quattro
tre
due
uno
>>>
>>> for chiave_valore in numeri.items():
...     print(chiave_valore)
... 
('quattro', 4)
('tre', 3)
('due', 2)
('uno', 1)
>>> 
>>> for chiave, valore in numeri.items():
...     print(chiave, valore)
... 
('quattro', 4)
('tre', 3)
('due', 2)
('uno', 1)
```


#### Ciclo for e le tuple

```python
>>> caratteri_a_caso = ("a", "z", "rosso", "ciao", 2)
>>> 
>>> for carattere in caratteri_a_caso:
...     print(carattere)
... 
a
z
rosso
ciao
2
```


#### Ciclo for e set


```python
>>> scrivania = {"portatile", "mouse", "cuffie", "alimentatore", "monitor esterno"}
>>> 
>>> for oggetto in scrivania:
...     print(oggetto)
... 
cuffie
monitor esterno
mouse
alimentatore
portatile
```


### Ciclo while

```python
>>> numero = 1
>>> while numero < 6:
...    print("numero vale: ", numero)
...    print("E quindi rimango nel ciclo while!")
...    numero = numero + 1
... 
('numero vale: ', 1)
E quindi rimango nel ciclo while!
('numero vale: ', 2)
E quindi rimango nel ciclo while!
('numero vale: ', 3)
E quindi rimango nel ciclo while!
('numero vale: ', 4)
E quindi rimango nel ciclo while!
('numero vale: ', 5)
E quindi rimango nel ciclo while!
```


### Break


#### Break con il ciclo for

```python
>>> for n in range(10):
...     if n == 5:
...         break
...     print(n)
... 
0
1
2
3
4

``` 


#### Break con il ciclo while

```python
>>> n = 1
>>> while (n < 10):
...     print(n)
...     if n == 5:
...         break
...     n = n +1
... 
1
2
3
4
5
```


### Continue


#### Continue con il ciclo for 

```python
>>> for n in range(1,11):
...     if n %2 == 0:
...         print(n, " numero pari")
...         continue
...     print(n, " numero dispari")
... 
(1, ' numero dispari')
(2, ' numero pari')
(3, ' numero dispari')
(4, ' numero pari')
(5, ' numero dispari')
(6, ' numero pari')
(7, ' numero dispari')
(8, ' numero pari')
(9, ' numero dispari')
(10, ' numero pari')
```


#### Continue con il ciclo while

```python
>>> n  = 0
>>> while n < 10:
...     n = n + 1
...     if n % 2 == 0:
...         print(n, "numero pari")
...         continue
...     print(n, "numero dispari")
... 
(1, 'numero dispari')
(2, 'numero pari')
(3, 'numero dispari')
(4, 'numero pari')
(5, 'numero dispari')
(6, 'numero pari')
(7, 'numero dispari')
(8, 'numero pari')
(9, 'numero dispari')
(10, 'numero pari')
```


## LE COMPREHENSION

```
Le comprehension sono dei costrutti che ti permettono di creare 
delle strutture dati - liste, dizionari, set - con una sintassi concisa.
```

### Come si crea una comprehension per la lista *-  list comprehension -*

```
Per creare una lista con la comprehension, occorre utilizzare la seguente sintassi:
[```espressione(variabile) for variabile in lista_di_elementi```]

Dove:
- ```variabile``` è la variabile di base su cui gira la creazione della lista
- ```espressione(variabile)``` è l'output che si vuole avere
- ```lista_di_elementi``` è una lista di valori nei quali occorre iterare per creare la lista
- ```for variabile in lista_di_elementi``` è l'iterazione che occorre utilizzare per poter creare la lista
```

```python
>>> doppio_dei_numeri = [n*2 for n in [1, 2, 3, 4]]
>>> doppio_dei_numeri
[2, 4, 6, 8]
```


### Come si crea una comprehension per il dizionario *-  dict comprehension -*

```
Per creare una comprehension per il dizionario, si usa la seguente sintassi:
{```espressione_chiave(variabile_chiave):espressione_valore(variabile_valore) for variabile_chiave, variabile_valore in elementi_iterabili```}

Dove:
- ```variabile_chiave``` è la variabile della chiave del dizionare su cui gira la creazione del dizionario
- ```variabile_valore``` è la variabile del valore associato alla chiave del dizionare 
  su cui gira la creazionedel dizionario
- ```elementi_iterabili``` è un elenco di valori nei quali occorre iterare per creare il dizionario
- ```for variabile_chiave, variabile_valore in elementi_iterabili``` è l'iterazione che occorre 
   utilizzare per poter creare il dizionario
```

```python
>>> {n: n**2 for n in range(1, 11) }
{1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64, 9: 81, 10: 100}
```


### Come si crea una comprehension per il set *-  set comprehension -*

```
Per creare una comprehension per il set, si usa la seguente sintassi:
{espressione(variabile) for variabile in elementi_iterabili}

Dove:
- ```variabile``` è la variabile di base su cui gira la creazione del set
- ```espressione(variabile)``` è l'output che si vuole avere
- ```elementi_iterabili``` è una lista di valori nei quali occorre 
  iterare per creare il set
* ```for variabile in lista_di_elementi``` è l'iterazione che occorre utilizzare per poter creare la lista
```

```python
>>> { n for n in [1,2,3,4,3,3,2,1,2]}
{1, 2, 3, 4}
```


## LA GESTIONE DEGLI ERRORI


### Errori di sintassi

```
Gli errori di sintassi si commettono prima che il codice sia eseguito.
Infatti, il problema non è nell'esecuzione del codice ma nella sua stesura.
Non a caso, è un classico fare errori di sintassi quando di sta imparando a sviluppare!
```

```python
>>> a = 1
>>> b = 2
>>> if a > b
  File "<stdin>", line 1
    if a > b
           ^
SyntaxError: invalid syntax

>>> if a > b:
... print(a)
  File "<stdin>", line 2
    print(a)
        ^
IndentationError: expected an indented block
```


### Eccezioni

```
Le eccezioni sono gli errori che si manifestano durante l'esecuzione del codice.
In base alla natura che li fa scaturire, ne esistono di vari tipi.
Per non appesantire la lettura, ti rimando a [questo link] con 
l'elenco completo di tutte le eccezioni che puoi incontrare.
```

[questo link]: <https://docs.python.org/3.6/library/exceptions.html>

```python
>>> c + d
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'c' is not defined

>>> 1 + '1'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: unsupported operand type(s) for +: 'int' and 'str'

>>> int("mi sa che avrò un'eccezione!")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: invalid literal for int() with base 10: "mi sa che avrò un'eccezione!"
>>>

>>> if a > b:
KeyboardInterrupt
>>>
```


### Gestire le eccezioni con try/except

```python
try:
    tuo codice
except eccezione:
    gestione dell'eccezione
```

```python
>>> try:
...     if c > 1:
...         print(c)
... except NameError:
...     print("Ti sei ricordato di definire la variabile c?")
...
Ti sei ricordato di definire la variabile c?
```


#### Gestione delle eccezioni multiple

```python
try:
   istruzione
except eccezione_1:
    gestione_eccezione_1
except eccezione_2:
    gestione_eccezione_2
except eccezione_n:
    gestione_eccezione_n
```

```python
>>> c = 1
>>> d = "pippo"
>>> try:
...     if c > d:
...         print(c)
... except NameError:
...     print("Ti sei ricordato di definire le variabili?")
... except TypeError:
...     print("Attento! C'è un errore di tipo TypeError: controlla il codice!")
...
Attento! C'è un errore di tipo TypeError: controlla il codice!
```


#### Dare un nome all'istanza dell'eccezione

```python
try:
    istruzione
except Eccezione as nome_eccezione_a_tuo_piacere:
    print(nome_eccezione_a_tuo_piacere)
```

```python
>>> try:
...     1/0
... except ZeroDivisionError as e:
...     print(e)
...
division by zero
```


#### Gestire più eccezioni contemporaneamente

```python
try:
    istruzione
except (Eccezione_1, Eccezione_2, Eccezione_n):
    print(Messaggio_comune)
```

```python
>>> try:
...     int("pippo") + '1'
... except (ValueError, TypeError):
...     print("Attento a quello che scrivi!")
...
Attento a quello che scrivi!
```


#### Gestire le eccezioni con raise

```
Raise permette di forzare che accada un determinato tipo di eccezione, 
lasciando che l'eccezione originale si continui a vedere
```

```python
>>> try:
...     1 + '1'
... except TypeError:
...     raise NotImplementedError("C'è una eccezione da gestire!")
...
Traceback (most recent call last):
  File "<stdin>", line 2, in <module>
TypeError: unsupported operand type(s) for +: 'int' and 'str'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "<stdin>", line 4, in <module>
NotImplementedError: C'è una eccezione da gestire!
```

```python
>>> try:
...     raise NotImplementedError("Questo è un errore non implementato")
... except NotImplementedError:
...     print("Sono dentro l'eccezione: verifica il codice!")
...     raise
...
Sono dentro l'eccezione: verifica il codice!
Traceback (most recent call last):
  File "<stdin>", line 2, in <module>
NotImplementedError: Questo è un errore non implementato
```


#### Utilizzo della clausola else

```
Con la clausola else si protegge il codice dal gestire accidentalmente un'eccezione 
sollevata da qualche altra parte di codice.
```

```python
try:
    istruzione
except Eccezione:
     istruzione
else:
    fai_qualcosa
```

```python
>>> a = 4
>>> b = 3
>>>
>>> try:
...     if a > b:
...         print("a > b")
... except TypeError as e:
...     print(e)
... else:
...     print("Operazione riuscita!")
...
a > b
Operazione riuscita! # Sono entrato nel ramo else
```

```python
>>> a = "Pippo"
>>> b = 3
>>>
>>> try:
...     if a > b:
...          print("a > b")
... except TypeError as e:
...     print(e)
... else:
...     print("Operazione riuscita!")
...
'>' not supported between instances of 'str' and 'int' # Non entro nel ramo else
                                                       # e mostro l'errore
```


#### Utilizzo della clausola finally

```
La clausola finally viene sempre eseguita prima di uscire dal blocco try.
E questo vuol dire che:
- è indipendente dalla manifestazione o meno di un'eccezione
- non gestisce alcuna eccezione
- è eseguita anche se sono presenti break, continue, return

```

```python
try:
    istruzione
except eccezione:
    istruzione_2
finally:
    istruzione_3
```

```python
>>> a = 2
>>> b = 3
>>> try:
...     if a > b:
...         print(a)
... except TypeError as e:
...     print(e)
... finally:
...     print("Vengo eseguito sempre!")
...
Vengo eseguito sempre! # Clausola sempre eseguita
```


```python
>>> a = 3
>>> b = "pippo"
>>>
>>> try:
...     if a > b:
...         print(a)
... except TypeError as e:
...     print(e)
... finally:
...     print("Vengo eseguito sempre!")
...
'>' not supported between instances of 'int' and 'str'
Vengo eseguito sempre! # Clausola sempre eseguita
```


## SCRIPTING

```
Uno script in Python non è altro che una serie di istruzioni scritte su 
di un file che deve essere salvato con l'estensione .py
```

### Cosa utilzzare per scrivere uno script in Python

```
Per scrivere uno script, puoi usare qualsiasi editor di testo!
Basta che salvi il file con l'estensione .py!
```

Apri l'editor di testo che preferisci e scrivi:

```python
print("Primo script")
```

 e salvalo come primo_script.py
 
 
 ### Come eseguire uno script

 Uno script Python deve essere eseguito da terminale:
 
| Sistema operativo | Terminale |
|:-:|:-:|
| Windows | Prompt dei comandi oppure la PowerShell |
| macOS | Terminale oppure iTerm|
| Distro Linux | terminale |
 

Nel caso dell'esempio "primo_script.py", quindi, basterà recarsi nella cartella dove
è stato salvato e scrivere:

```bash
$ python primo_script.py
Primo script
```


### Come rendere eseguibile uno script

Per rendere eseguibili gli script Python, occorre procedere nel seguente modo:

| Sistema operativo | Come rendere eseguibile lo script | Come eseguirlo |
|:-:|:-:|:-:|
| Windows | lo script è già eseguibile | ```nome_script.py``` |
| macOS | ```chmod +x nome_script.py```  |  ```./nome_script.py``` |
| Distro Linux | ```chmod +x nome_script.py```  |  ```./nome_script.py``` |


Da una distro Linux, nel caso dell'esempio "primo_script.py", farei nel seguente modo:

```bash
$ chmod +x primo_script.py 
$ ./primo_script.py 
  Primo script
```


#### Passare parametri ad uno script

```python
import argparse

parser = argparse.ArgumentParser(description="Passaggio di parametri!") # puoi anche non inserire la description
parser.add_argument("parametro", dest="nome parametro", help="Inserire a cosa serve il parametro")
args = parser.parse_args() # Creo la lista di parametri
```

Esempio:

```python
# saluto.py
import argparse

parser = argparse.ArgumentParser(description="Lo script ti saluta!")
parser.add_argument("-n", "--name", dest="name", help="Inserire il nome")
args = parser.parse_args()

# main
if __name__ == '__main__':
    print("Ciao {}!".format(args.name))
```

```bash
$ python saluto.py -h # Guardo l'help dello script
usage: saluto.py [-h] [-n NAME]

Lo script ti saluta!

optional arguments:
  -h, --help            show this help message and exit
  -n NAME, --name NAME  Inserire il nome


$ python saluto.py -n Pippo # uso il parametro -n con il nome Pippo
Ciao Pippo!
```


## FUNZIONI

### Cosa sono le funzioni
```
La funzione non è altro che un "mini programma" che esegue una funzionalità 
che accetta dei parametri in input e fornisce un output.

regola aurea:
se la funzione non l'hai ancora definita, non chiamarla!
```

```python
def nome_funzione(parametro_1, parametro_2, parametro_n):
    istruzione_1
    istruzione_2
    istruzione_n
    return istruzione_1, istruzione_n # return è opzionale:
                                      # se viene inserito, ci sarà un valore di ritorno
                                      # se non viene inserito, la funzione restituirà 
                                      # implicitamente None     
```

Scrivi questo esempio e salvalo nel file moltiplicazione.py:

```python
def moltiplica_due_numeri(primo_numero, secondo_numero):
    moltiplicazione = primo_numero * secondo_numero
    return print("Moltiplicando {} per {} ottengo {} \n".format(primo_numero, secondo_numero, moltiplicazione)
    
    
moltiplica_due_numeri(1,2)
moltiplica_due_numeri(3,4)
```

Eseguendo il file moltiplicazione.py, avrai questo output:

```python
Moltiplicando 1 per 2 si ottiene 2
Moltiplicando 3 per 4 si ottiene 12
```

Scrivi questo esempio e salvalo nel file saluto.py:

```python
def saluto():
    print("Ciao!\nSono una funzione che non restituirà alcun valore!")


saluto()
```

Eseguendo il file saluto.py, avrai questo output:

```python
Ciao!
Sono una funzione che non restituirà alcun valore!
```


### Lo scope delle variabili nelle funzioni

```
scope globale: le variabili definite fuori dalle funzioni sono visibili da quest'ultime indistintamente
scope locale: le variabili sono visibili solo all'interno della funzione
```

Esempio:

```python
# scope.py

a = "Sono una variabile globale!"


def prova_scope():

    b = "Sono una variabile locale"

    print(a)
    print(b)

prova_scope()
print(b)
```

Output:

```bash
Sono una variabile globale! # prova_scope può stampare a video il valore di a 
                            # perchè è una variabile globale
Sono una variabile locale   # prova_scope può stampare a video il valore di b
                            # perchè è una sua variabile
                            
Traceback (most recent call last):
  File "scope2.py", line 14, in <module>
    print(b)
NameError: name 'b' is not defined # l'ultimo print(b) non può stampare il valore
                                   # di b perchè fuori dalla funzione prova_scope
                                   # b non esiste!
```


#### globals() e locals()

```
La funzione globals() permette di vedere il contenuto delle variabili globali
La funzione locals() permette di vedere il contenuto delle variabili locali
```

Esempio:

```python
# scope.py

a = "Sono una variabile globale!"


def prova_scope():

    b = "Sono una variabile locale"
    c = "Anche io sono una variabile locale!"

    print(globals()['a'])
    print(locals())


prova_scope()
```

Output:

```bash
Sono una variabile globale! # Valore della variabile globale a
{'c': 'Anche io sono una variabile locale!', 'b': 'Sono una variabile locale'} # Elenco delle variabili locali
```

globals() e locals() possono essere utilizzate per verificare se una variabile è globale o locale:

```python
# scope.py

a = "variabile globale"


def prova_scope():

    b = "variabile locale"

    print("a è una variabile globale?", 'a' in globals())
    print("a è una variabile locale?", 'a' in locals())
    print("b è una variabile globale?", 'b' in globals())
    print("b è una variabile locale?", 'b' in locals())


prova_scope()
```

Output:

```bash
a è una variabile globale? True
a è una variabile locale? False
b è una variabile globale? False
b è una variabile locale? True
```


## MODULI

```
In Python, un modulo è un file con estensione *.py* che contiene del codice e dei dati che risultano riusabili.

- Mmm... Ma se è un file .py, che differenza c'è tra un modulo ed uno script?*
  Uno script è creato per esegurie del codice.
  Un modulo, invece, nasce con l'obiettivo di essere importato in altri file e fornire delle funzionalità.
```

### Creazione di un modulo

```
- creare un file con l'estensione ***.py***.
- inserire delle funzionalità (funzioni o dati)
```

Esempio:
Creare il file modulo_somma.py contenente il seguente codice:

```python
def somma(a, b):
    risultato = a + b
    return print("La somma tra {} e {} fa {}".format(a, b, risultato))
```


### Importare un modulo

```
Per importare un modulo, occorre scrivere:
import nome_modulo
```

Continuando l'esempio precedente, si può creare il file main.py che contiene il seguente codice:

```python
import modulo_somma

print("Esegui la somma tra due numeri:")
primo_numero = input("Inserisci il primo numero: ")
secondo_numero = input("Inserici il secondo numero: ")

try:
    modulo.somma(int(primo_numero), int(secondo_numero))
except Exception:
    print("Ehi: devi inserire solo numeri!")
```

output:

```python
Esegui la somma tra due numeri:
Inserisci il primo numero: 1
Inserici il secondo numero: 2
La somma tra 1 e 2 fa 3
```


### Importare gli oggetti di un modulo

```
Per importare gli oggetti modulo, occorre scrivere:

- per tutti gli oggetti:
  import nome_modulo
  
 - per uno/alcuni moduli:
   from nome_modulo import funzione1, funzione_n
```

Esempio:

Scrivi questo modulo:

```python
# modulo modulo_operazioni.py

def somma(a, b):
    risultato = a + b
    return print("La somma tra {} e {} fa {}".format(a, b, risultato))


def sottrazione(a, b):
    risultato = a - b
    return print("La differenza tra {} e {} fa {}".format(a, b, risultato))


def moltiplicazione(a, b):
    risultato = a * b
    return print("La moltiplicazione tra {} e {} fa {}".format(a, b, risultato))


def divisione(a, b):
    risultato = a / b
    return print("La divisione tra {} e {} fa {}".format(a, b, risultato))
```

```python
# file prova_modulo_operazioni.py
from modulo_operazioni import *

somma(1, 2)

sottrazione(3, 4)

moltiplicazione(5, 6)

divisione(7, 8)
```

Output:
```python
La somma tra 1 e 2 fa 3
La differenza tra 3 e 4 fa -1
La moltiplicazione tra 5 e 6 fa 30
La divisione tra 7 e 8 fa 0.875
```


## LA VARIABILE GLOBALE \_\_name\_\_

Per discriminare se un file viene eseguito come script o importato come modulo, 
occorre controllare il valore della *variabile globale* ***\_\_name\_\_***:
- se il file viene eseguito come script, la variabile ha come valore "***\_\_main\_\_***"
- se il file viene importato come modulo, la variabile ha come valore il nome del modulo

Per ***non commettere errori*** durante l'esecuzione del codice, 
occorre scrivere in fondo al file questo controllo:

```python
if __name__ == '__main__':
    istruzione
```

Così facendo sarai sicuro che:
- se il file viene eseguito come script, allora dovrà eseguire determinate azioni
- se il file viene eseguito come modulo, invece, dovrà eseguire altre azioni

Ad esempio, scrivi questo file:

```python
# file modulo_name.py

def eseguito_come_script():
    print("modulo_name.py è stato eseguito come script!")
    print("Valore della variabile globale __name__: {}".format(__name__))


def eseguito_come_modulo():
    print("modulo_name.py è stato importato come modulo")
    print("Valore della variabile globale __name__: {}".format(__name__))


if __name__ == '__main__':
    eseguito_come_script()
    
else:
    eseguito_come_modulo()
```

Se esegui il file modulo_name.py come script, avrai il seguente comportamento:

```bash
$ python modulo_name.py
modulo_name.py è stato eseguito come script!
Valore della variabile globale __name__: __main__
```

Se esegui il file modulo_name.py come modulo, avrai quest'altro comportamento:

```python
# main_modulo_name.py
import modulo_name as m
```

```bash
$ python main_modulo_name.py
modulo_name.py è stato importato come modulo
Valore della variabile globale __name__: modulo_name
```


## LA GESTIONE DEI FILE


### Leggere un file

#### Leggere un file tutto in una volta

Se il file non è di dimensioni eccessive, puoi leggerlo in una sola volta:

```python
nome_file = "file_da_leggere"

with open(nome_file, 'r', encoding="utf-8") as f:
    print(f.read())
```

Esempio:

```python
# read_file.py

nome_file = "test.txt"

with open(nome_file, 'r', encoding="utf-8") as f:
    print(f.read())
```

output:

```bash
Sono
un
file di prova!
```


#### Leggere un file riga per riga

Se vuoi leggere un file riga per riga, occorre scrivere:

```python
nome_file = "file_da_leggere"

with open(nome_file, 'r', encoding="utf-8") as f:
    contenuto = f.readlines()
    
    for riga in contenuto:
        print(riga)
```

Esempio:

```python
# read_file.py

nome_file = "test.txt"


with open(nome_file, 'r', encoding="utf-8") as f:
    contenuto = f.readlines()
    
    for riga in contenuto:
        print(riga)
```

output:

```bash
Sono

un

file di prova!
```


### Scrivere un file

#### Scrivere in un file

```python

nome_file = "file_da_scrivere"

with open(nome_file, 'w', encoding="utf-8") as f:
    dati = "riga da scrivere\n"
    f.write(dati)
```

Esempio:

```python
# write_file.py

nome_file = "file_di_prova.txt"

with open(nome_file, 'w', encoding="utf-8") as f:
    dati_da_scrivere = "Sono la prima riga\nSono la seconda riga"
    
    f.write(dati_da_scrivere)
```

Aprendo il file file_di_prova.txt avresti il seguente contenuto:

```
Sono la prima riga
Sono la seconda riga
```


#### Aggiungere una riga ad un file già esistente

```python
nome_file = "file_da_scrivere"

with open(nome_file, 'a', encoding="utf-8") as f:
    dati = "riga da scrivere\n"
    f.write(dati)
```

Esempio:

```python
# write_file.py

nome_file = "file_di_prova.txt"

with open(nome_file, 'a', encoding="utf-8") as f:
    dati_da_scrivere = "\nSono la terza riga"
    
    f.write(dati_da_scrivere)
```

Aprendo il file file_di_prova.txt avresti il seguente nuovo contenuto:

```
Sono la prima riga
Sono la seconda riga
Sono la terza riga
```


### Eliminare un file

```python
import os

nome_file = "file_da_eliminare"

os.remove(nomefile)
```


Esempio:

```python
# delete_file.py

import os

nome_file = "file_di_prova.txt"

os.remove(nome_file)
```

Possiamo migliorare lo script restituendo un errore
nel caso in cui il file non esistesse:

```python
# delete_file.py

import os

nome_file = "file_di_prova.txt"

try:
    os.remove(nome_file)
except OSError as e:
    print(f"Il file {nome_file} non esiste!\n{e.strerror}")
```

Esempio:

```python
# delete_file.py

import os

nome_file = "file_di_prova.txt"

try:
    os.remove(nome_file)
except OSError as e:
    print(f"Il file {nome_file} non esiste!\n{e.strerror}")
```

output:

```bash
Il file file_di_prova.txt non esiste!
Impossibile trovare il file specificato
```

### Rinominare un file

```python
import os

vecchio_nome = "file da rinominare"
nuovo_nome = "nuovo nome del file"

try:
    os.rename(vecchio_nome, nuovo_nome)
except OSError as e:
    print(f"Il file {vecchio_nome} non può essere rinominato!\n{e.strerror}")
```

Esempio:

```python
# rename_file.py

import os

vecchio_nome = "file_di_prova.txt"
nuovo_nome = "nuovo_file_di_prova.txt"

try:
    os.rename(vecchio_nome, nuovo_nome)
except OSError as e:
    print(f"Il file {vecchio_nome} non può essere rinominato!\n{e.strerror}")
```

Se il file si riesce a rinominare, si potrà vedere il nuovo nome del file.
Nel caso in cui non si riuscisse a rinominarlo, si avrebbe il seguente output:

```bash
Il file file_di_prova.txt non può essere rinominato!
Impossibile trovare il file specificato
```


### Copiare un file

```python
import shutil

origine = "path di origine/nome file"
destinazione = "path di destinazione"

try:
    shutil.copy2(origine, destinazione) # con copy2 preservo tutte le info sul file
except OSError as e:                    # come l'ultimo accesso, i permessi ecc...
    print(f"Il file {origine} non può essere copiato!\n{e.strerror}")
```

Esempio:

```python
# copy_file.py

import shutil

origine = "file_di_prova.txt"
destinazione = "subdir/file_di_prova.txt"

try:
    shutil.copy2(origine, destinazione)
except OSError as e:
    print(f"Il file {origine} non può essere copiato!\n{e.strerror}")
```


### Spostare un file

```python
import shutil

origine = "path/file da spostare"
destinazione = "path di destinazione/"

try:
    shutil.move(origine, destinazione)
except OSError as e:
    print(f"Il file {origine} non può essere spostato!\n{e.strerror}")
```

Esempio:

```python
# move_file.py

import shutil

origine = "subdir/file_di_prova.txt"
destinazione = "subdir2/"

try:
    shutil.move(origine, destinazione)
except OSError as e:
    print(f"Il file {origine} non può essere spostato!\n{e.strerror}")
```


## LA GESTIONE DEI FILE CSV


### Leggere un file csv

```
per l'esempio sarà utilizzato il seguente file csv:

# test.csv
"Nome", "Cognome", "Email"
"Mario", "Rossi", "rossi@notemail.com"
"Luca", "Verdi", "verdi@notemail.com"
"Marco", "Gialli", "gialli@notemail.com"
```

```python
import csv

with open('nome file.csv', newline='', encoding='utf-8') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',') # in questo caso il delimitatore è la virgola 
    for row in csv_reader:                           
        print(", ".join(row)) # se avessi messo print(row) avrei stampato
                              # una lista di righe racchiuse tra []
                              # prova e vedrai la differenza di output!
```

Esempio:

```python
import csv

with open('test.csv', newline='', encoding='utf-8') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        print(",".join(row))
```

Output:

```bash
"Nome", "Cognome", "Email"
"Mario", "Rossi", "rossi@notemail.com"
"Luca", "Verdi", "verdi@notemail.com"
"Marco", "Gialli", "gialli@notemail.com"
```


### Scrivere un file csv

```python
import csv

with open('nome file.csv', 'w', newline='') as csv_file:
    scrivi_riga = csv.writer(csv_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_ALL)
    scrivi_riga.writerow(['Intestazione colonna 1', 'Intestazione colonna 2'])
    scrivi_riga.writerow(['colonna 1', 'colonna 2'])
```

Esempio:  

```python
# write_csv.py

import csv

with open('new_file.csv', 'w', newline='') as csv_file:
    scrivi_riga = csv.writer(csv_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_ALL)
    scrivi_riga.writerow(['Nome', 'Cognome'])
    scrivi_riga.writerow(['Mario', 'Rossi'])
    scrivi_riga.writerow(['Marco', 'Bianchi'])
```

Output:

```
"Nome","Cognome"
"Mario","Rossi"
"Marco","Bianchi"
```


## LA GESTIONE DEI FILE JSON


### Scrivere un file json

```python
import json

dati_da_inserire = { # dati in formato JSON }

with open("nome file.json", "w", encoding="utf-8") as scrivi_json:
    json.dump(dati_da_inserire, scrivi_json, ensure_ascii=False, indent=4) # ensure_ascii=False mi permette di avere
                                                                           # nel file json codificati i caratteri 
                                                                           # speciali e non l'equivalente ASCII
```

Conversione da oggetti Python a JSON:

| Python | JSON |
|---|---|
| dizionario | oggetto |
| lista, tupla | array |
| stringa |	stringa |
| int, long, float | numerico |
| True | true |
| False | false |
| None | null |

Esempio:

```python
# prova_json.py

import json

dati_da_inserire = { 
    "developer": {
                    "nome": "John",
                    "cognome": "Doe",
                    "età": 35
    }

 }

with open("esempio.json", "w", encoding="utf-8") as scrivi_json:
    json.dump(dati_da_inserire, scrivi_json, ensure_ascii=False, indent=4)
```

Output:

```json
# esempio.json

{
    "developer": {
        "nome": "John",
        "cognome": "Doe",
        "età": 35
    }
}
```


### Leggere un file json

```python
import json

with open("file di esempio.json", "r", encoding="utf-8") as file_json:
    dati_da_leggere = json.load(file_json)

    print(dati_da_leggere)
```

Conversione da JSON ad oggetti Python:  

| JSON | Python |
|---|---|
| object | dict  |
| array  | list  |
| string | str   |
| int 	 | int   |
| real 	 | float |
| true 	 | True  |
| false  | False |
| null 	 | None  |

Esempio:

```python

# leggerejson.py
import json

with open("esempio.json", "r", encoding="utf-8") as file_json:
    dati_da_leggere = json.load(file_json)

    print(dati_da_leggere)
```

Output:

```bash
{'developer': {'nome': 'John', 'cognome': 'Doe', 'età': 35}}
```


## PROGRAMMAZIONE AD OGGETTI (OOP)

### Classe

```
Una classe è un concetto astratto.
Serve per creare una struttura dati che contiene
delle informazioni scelte da te.

Puoi pensare ad una classe come al concetto di tv.
Tutte hanno uno schermo, si attaccano alla corrente, servono
per vedere dei canali, giusto?
Però ne esistono di marche, dimensioni e funzioni diverse, no?
Ma nascono tutte dallo stesso concetto!
```


#### Definizione di una classe

```python
class Nomeclasse:
  # attributi
  # metodi
```

Quando viene definita una classe:
- crei un oggetto classe
- non la istanzi

Esempio:

```python
class Tv:
  pass
```


#### Inizializzare una classe

```
Quando inizializzi una classe, specifichi degli attributi iniziali
che deve avere di default.
Per poterlo fare occorre:
- definire il metodo __init__
- passare almeno un argomento: self (che referenzia l'oggetto stesso)

Ricorda: 
il metodo __init__ non viene mai chiamato!
Viene chiamato in automatico nel momento in cui si istanzia la classe.
Questo tipo di metodo è chiamato costruttore.
```

```python
class Nomeclasse:
    
    # Inizializzo la classe
    def __init__(self, attributo1, attributon):
        self.attributo1 = attributo1
        self.attributon = attributon
```

Esempio:

```python
class Tv:
    
    # Inizializzo la classe
    def __init__(self, marca, modello, dim_schermo):
        self.marca = marca
        self.modello = modello
        self.dim_schermo = dim_schermo
```


#### Aggiungere attributi di classe

```
Gli attributi di classe non sono altro che delle variabili che
saranno le stesse per ogni istanza che sarà creata.

Usa solo sostantivi per dare i nomi agli attributi.

Se vuoi creare degli attributi privati, aggiungi un _ davanti al nome.
```


```python
class Nomeclasse:
    
    # Attributi di classe
    attributo = valore
    _attributo = valore # attributo privato
    __attributo = valore # attributo ancora più privato
```

Esempio:

```python
class Tv:
    
    # Attributi di classe
    forma = "rettangolare"

    # Inizializzo la classe
    def __init__(self, marca, modello, dim_schermo):
        self.marca = marca
        self.modello = modello
        self.dim_schermo = dim_schermo
```


#### Aggiungere metodi di classe

```
I metodi di classe servono ad implementare le funzionalità dell'oggetto.
Come la classe __init__, devono avere sempre il parametro self.

Usa solo verbi per dare i nomi ai metodi.
```

```python
class Nomeclasse:
    
    # metodo di classe
    def metodo1(self):
      # azioni
    
    def metodo2,(self, attributo):
      # azioni
```

Esempio:

```python
class Tv:

    # Attributi di classe
    forma = "rettangolare"

    # Inizializzo la classe
    def __init__(self, marca, modello, dim_schermo):
        self.marca = marca
        self.modello = modello
        self.dim_schermo = dim_schermo


    # Metodi di classe
    def mostra_specifiche(self):
        return f"Marca tv: {self.marca}\nModello tv: {self.modello}\nDimensione schermo: {self.dim_schermo}"

    def mostra_marca(self):
        return f"Marca tv: {self.marca}"
    
    def mostra_modello(self):
        print(f"Modello tv: {self.modello}")
    
    def mostra_dim_schermo(self):
        print(f"Dimensione schermo: {self.dim_schermo}")

```


#### Instanziare una classe

```
Instanziare una classe non vuol dire altro che creare un nuovo unico oggetto di quella classe
```

```python
variabile = Nomeclasse()
```

Esempio:

```python
mia_tv = Tv("Sony", "1234", 50)
```

##### Accedere ai metodi implementati

```python
variabile.metodo()
variabile.metodo(parametro1, parametro_n)
```

Esempio:

```python
print(mia_tv.forma)
print(mia_tv.mostra_specifiche())
```

Output:

```bash
rettangolare
Marca tv: Sony
Modello tv: 1234
Dimensione schermo: 50
```


### Ereditarietà

```
Hai presente i tratti che hai preso dai tuoi genitori che chiami ereditarietà?
Nella programmazione ad oggetti il concetto è lo stesso.
Puoi creare una nuova classe che eredità tutti i metodi e gli attributi di un'altra classe che viene chiamata "padre".
```

```python
class ClasseDerivata(ClassePadre):
    # attributi
    # metodi
```

```
Posso creare classi che ereditano da più classi padri?
Certo:
```

```python
class ClasseDerivata(ClassePadre1, ClassePadre2, ClassePadreN):
    # attributi
    # metodi
```

Esempio:

```python
class SmartTV(Tv):
    pass


nuova_smarttv = SmartTV("Samsung", "90123", 65)

print(nuova_smarttv.forma)
print(nuova_smarttv.mostra_specifiche())
```

Output:

```bash
rettangolare
Marca tv: Samsung
Modello tv: 90123
Dimensione schermo: 65
```


### Polimorfismo

```
Con il polimorfismo si può sovrascrivere le funzionalità di una classe (override) oppure di comportarsi in modo differente a seconda dei parametri passati (overloading)
```


#### Override - Sovrascrivere le funzionalità di una classe

```
Le classi figlio possono modificare le funzionalità di una classe padre semplicemente mantenendo il nome ma ridefinendole nel contenuto!
```

```python
class ClasseDerivata(ClassePadre1):

    # Attributi di classe
    attributo = nuovo valore 

    # metodo di classe
    def metodo1(self, nuovo parametro):
      # nuove azioni della classe figlio
```

Esempio:

```python
class SmartTV(Tv):
    
    # Inizializzo la classe
    def __init__(self, marca, modello, dim_schermo, tipo_smart):
        self.marca = marca
        self.modello = modello
        self.dim_schermo = dim_schermo
        self.tipo_smart = tipo_smart # ridefinisco il metodo con questo nuovo parametro
    
    # Metodi di classe
    def mostra_specifiche(self): # ridefinisco il metodo 
        return f"Marca tv: {self.marca}\nModello tv: {self.modello}\nDimensione schermo: {self.dim_schermo}\nOS smart tv: {self.tipo_smart}"

nuova_smarttv = SmartTV("Samsung", "90123", 65, "Android TV")

print(nuova_smarttv.mostra_specifiche())
```

Output:

```bash
rettangolare
Marca tv: Samsung
Modello tv: 90123
Dimensione schermo: 65
```


#### Overloading - Comportamenti differenti in base ai parametri passati

```
La classe può comportarsi in modo differente a seconda dei parametri passati
```

Esempio:

```python
class SmartTV(Tv):
    
    # Inizializzo la classe
    def __init__(self, marca, modello, dim_schermo, smart_android=None):
        self.marca = marca
        self.modello = modello
        self.dim_schermo = dim_schermo
        self.smart_android = smart_android

    
    # Metodi di classe
    def mostra_specifiche(self):

        if self.smart_android is None:
                self.smart_android = "Non è presente un Android TV"

        return f"Marca tv: {self.marca}\nModello tv: {self.modello}\nDimensione schermo: {self.dim_schermo}\nOS smart tv: {self.smart_android}"


prima_smarttv= SmartTV("Samsung", "90123", 65, "Android TV") # Uso un nuovo valore per il parametro "smart_android"
print(prima_smarttv.mostra_specifiche() + "\n")
seconda_smarttv = SmartTV("Sony", "5678", 50) # Uso il valore originale del parametro "smart_android"
print(seconda_smarttv.mostra_specifiche())
```

Output:

```bash
Marca tv: Samsung
Modello tv: 90123
Dimensione schermo: 65
OS smart tv: Android TV

Marca tv: Sony
Modello tv: 5678
Dimensione schermo: 50
OS smart tv: Non è presente un Android TV
```
