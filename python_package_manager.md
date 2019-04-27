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
                                         # 
pip install <nome pacchetto>==<versione> # Installa esattamente questa 
                                         # versione del pacchetto
                                         # 
pip install <nome pacchetto>>=<versione> # Indica la versione minima del 
                                         # pacchetto da installare
```

Esempio:
```bash
$ pip install oauth
Collecting oauth
  Downloading https://files.pythonhosted.org/packages/e2/10/d7d6ae26ef7686109a10b3e88d345c4ec6686d07850f4ef7baefb7eb61e1/oauth-1.0.1.tar.gz
Installing collected packages: oauth
  Running setup.py install for oauth ... done
Successfully installed oauth-1.0.1
```


#### Installare dei pacchetti da una lista

```python
pip freeze > requirements.txt    # salvo in una lista i pacchetti installati
pip install -r requirements.txt  # installo i pacchetti presenti nella lista
```

Esempio:
```bash
$ pip freeze > requirements.txt
$ cat requirements.txt
alembic==0.9.7
bcrypt==3.1.4
...
$ pip install -r requirements.txt
```


#### Disinstallare un pacchetto

```python
pip uninstall <nome pacchetto>
```

Esempio:
```bash
$ pip uninstall oauth
Uninstalling oauth-1.0.1:
  Would remove:
    /Users/giandoe/Virtualenvs/env/lib/python3.6/site-packages/oauth-1.0.1-py3.6.egg-info
    /Users/giandoe/Virtualenvs/env/lib/python3.6/site-packages/oauth/*
Proceed (y/n)? y
  Successfully uninstalled oauth-1.0.1
```


#### Visualizzare la lista di pacchetti installati

```python
pip list
```

Esempio:
```bash
$ pip list
Package           Version
----------------- -------
alembic           0.9.7
bcrypt            3.1.4
blinker           1.4
...
```


#### Visualizzare i dettagli di un pacchetto installato

```python
pip show <nome pacchetto>
```

Esempio:
```bash
$ pip show pip
Name: pip
Version: 19.1
Summary: The PyPA recommended tool for installing Python packages.
Home-page: https://pip.pypa.io/
Author: The pip developers
Author-email: pypa-dev@groups.google.com
License: MIT
Location: /Users/giandoe/Virtualenvs/env/lib/python3.6/site-packages
Requires:
Required-by:
```


### Cercare un pacchetto

```python
pip search <nome pacchetto>
```

Esempio:
```bash
$ pip search oauth
oauth (1.0.1)                                             - Library for OAuth version 1.0a.
pmr2.oauth (0.6.1)                                        - OAuth PAS Plugin, OAuth 1.0 provider for Plone.
plurk-oauth (0.9.2)                                       - Plurk OAuth API
paytm-oauth (0.2)                                         - Consumer for paytm oauth
...
```


#### Aggiornare un pacchetto alla nuova versione

```python
pip install --upgrade <nome pacchetto>
```

Pip può aggiornare... pip?
Certo:

```python
pip install --upgrade pip
```

Esempio:

```bash
$ pip install --upgrade pip
Collecting pip
  Downloading https://files.pythonhosted.org/packages/f9/fb/863012b13912709c13cf5cfdbfb304fa6c727659d6290438e1a88df9d848/pip-19.1-py2.py3-none-any.whl (1.4MB)
    100% |████████████████████████████████| 1.4MB 934kB/s
Installing collected packages: pip
  Found existing installation: pip 9.0.1
    Uninstalling pip-9.0.1:
      Successfully uninstalled pip-9.0.1
Successfully installed pip-19.1
```
