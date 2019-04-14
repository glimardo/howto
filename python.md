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
