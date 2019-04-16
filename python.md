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


### L'istruzione IF

```python
>>> if 1 + 2 == 3:
...     print("1 + 2 fa 3!")
... 
1 + 2 fa 3!
```


#### ELSE ed ELIF

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


### CICLO FOR

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


### IL CICLO WHILE

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


### BREAK


#### BREAK con il ciclo for

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


#### BREAK con il ciclo while

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


### CONTINUE


#### CONTINUE con il ciclo for 

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


#### CONTINUE con il ciclo while

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


## FUNZIONI

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
