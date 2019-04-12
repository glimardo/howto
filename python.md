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
* è diverso da zero
* è la costante True
* non è vuoto

In Python, un oggetto è falso se:
* vale zero
* è la costante False
* è la costante None
* è vuoto

```
