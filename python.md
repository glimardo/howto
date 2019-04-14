# PYTHON

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


## Operatori di confronto

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| == | Uguaglianza. &nbsp; Ritorna vero se sono uguali. Altrimenti Falso | a == b|
| != | Disuguaglianza. &nbsp; Ritorna vero se sono diversi. Altrimenti Falso | a != b | 
| >| Maggiore di. &nbsp; Ritorna vero se il primo numero è maggiore del secondo. Altrimenti Falso | a > b |
| >= | Maggiore o uguale a. &nbsp; Ritorna vero se il primo numero è maggiore o uguale al secondo. Altrimenti Falso | a >= b |
| <| Minore di. &nbsp; Ritorna vero se il primo numero è minore del secondo. Altrimenti Falso | a < b |
| <= | Minore o uguale a. &nbsp; Ritorna vero se il primo numero è minore o uguale al secondo. Altrimenti Falso | a <= b |


## Operatori booleani

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


## Operatori binari

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| & | Esegue un AND di bit tra due oggetti interi | a & b |
| \| | Esegue un OR di bit tra due oggetti interi | a \| b |
| ^ | Esegue uno XOR (OR esclusivo) di bit tra due oggetti interi | a ^ b |
|<< | Esegue uno shif a sinistra di b posizioni dei bit di a | a << b|
| >> | Esegue uno shif a destra di b posizioni dei bit di a | a >> b|
| ~ | inverte il valore dei bit di a: gli 1 diventano 0 e gli zero 1 | ~a |


## Operatori di concatenazione

| Operatore | Descrizione | Sintassi |
|---|---|:-:|
| + | Concatenazione di più oggetti | a + b + c |
| * | Concatenazione multipla: ripete n volte un oggetto | a * n |


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

'''
Le tuple sono simili alle liste.
La vera differenza tra le due riguarda la tipologia:
mentre le liste sono oggetti mutabili, le tuple sono oggetti **immutabili**.
Quindi, una volta creata una tupla, **non potrai** più modificare il contenuto.

Quando usare le tuple
- quando serve un elenco non mutabile di dati eterogenei
- quando serve salvare un elenco statico di dati
'''


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

'''
Non si può! XD
'''


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
