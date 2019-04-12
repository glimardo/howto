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
