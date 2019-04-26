PYTHON PACKAGE MANAGER (bozza)
======

<!-- toc -- >
Indice
======
<!-- /toc -->

## Pip - il package manager di Python

Pip è il package manager preferito dagli sviluppatori,
pertanto: usalo!

### Sito ufficiale

Puoi trovare tutte le informazioni utili su pip sul suo [sito ufficiale](https://pip.pypa.io/en/stable/)


### Installare pip

Pip si trova già installato dalla versione di Python 2 maggiore o uguale alla 2.7.9 oppure di Pytho3 con versioni maggiori o uguali alla 3.4.

Nel caso in cui pip non fosse installato, occorre:  
- scaricare pip da [questo indirizzo](https://bootstrap.pypa.io/get-pip.py)
- dalla cartella dove è stato scaricato, eseguire il comando:
  ```python
   python get-pip.py
  ```

Nel caso ci fossero problemi, puoi leggere [la pagina ufficiale](https://pip.pypa.io/en/stable/installing/).


### Comandi fondamentali

#### Installare un pacchetto

```python
pip install <nome pacchetto>             # Installa l'ultima versione
                                         # utile del pacchetto
pip install <nome pacchetto>==<versione> # Installa esattamente questa 
                                         # versione del pacchetto
pip install <nome pacchetto>>=<versione> # Indica la versione minima del 
                                         # pacchetto da installare
```


#### Installare dei pacchetti da una lista

```python
pip freeze > requirements.txt    # salvo in una lista i pacchetti installati
pip install -r requirements.txt  # installo i pacchetti presenti nella lista
```


#### Disinstallare un pacchetto

```python
pip uninstall <nome pacchetto>
```


#### Visualizzare la lista di pacchetti installati

```python
pip list
```


#### Visualizzare i dettagli di un pacchetto installato

```python
pip show <nome pacchetto>
```


### Cercare un pacchetto

```python
pip search <nome pacchetto>
```


#### Aggiornare pip

```python
pip install --upgrade pip
```
