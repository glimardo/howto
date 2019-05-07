AMBIENTI VIRTUALI IN PYTHON
===

<!-- toc -->
Indice
======

- [A COSA SERVE UN AMBIENTE VIRTUALE](#a-cosa-serve-un-ambiente-virtuale)
- [CREARE UN AMBIENTE VIRTUALE](#creare-un-ambiente-virtuale)
  * [Creare una directory di lavoro](#creare-una-directory-di-lavoro)
  * [Creare un nuovo ambiente virtuale](#creare-un-nuovo-ambiente-virtuale)
  * [Attivare un ambiente virtuale](#attivare-un-ambiente-virtuale)
- [GESTIRE GLI AMBIENTI VIRTUALI](#gestire-gli-ambienti-virtuali)
  * [Virtualenvwrapper](#virtualenvwrapper)
    + [Installare Virtualenvwrapper](#installare-virtualenvwrapper)
    + [Configurare Virtualenvwrapper](#configurare-virtualenvwrapper)
    + [Creare un nuovo ambiente virtuale](#creare-un-nuovo-ambiente-virtuale-1)
    + [Attivare un ambiente virtuale](#attivare-un-ambiente-virtuale-1)
    + [Disattivare un ambiente di test](#disattivare-un-ambiente-di-test)
    + [Visualizzare la lista di tutti gli ambienti di test](#visualizzare-la-lista-di-tutti-gli-ambienti-di-test)
    + [Rimuovere un ambiente virtuale](#rimuovere-un-ambiente-virtuale)
<!-- /toc -->

## A COSA SERVE UN AMBIENTE VIRTUALE

Un ambiente virtuale non è altro che un nuovo ambiente totalmente isolato dal resto del sistema dove:  
- si possono creare progetti separati ognuno con le sue dipendenze
- ha una propria versione di Python
- ha i propri pacchetti installati  


## CREARE UN AMBIENTE VIRTUALE

```
Dalla versione 3.3 di Python, esiste già il modulo [venv]<https://docs.python.org/3/library/venv.html> per poter gestire gli ambienti virtuali.
```

### Creare una directory di lavoro

E' bene creare una directory di lavoro dove salvare tutti i dati del proprio progetto.

Esempio:

```bash
$ mkdir pev
$ cd pev
 pwd
/Users/giandoe/pev
```

### Creare un nuovo ambiente virtuale

```bash
python3 -m venv <nome dell'ambiente virtuale>
```

Esempio:

```bash
$ python3 -m venv ambiente_di_test
```

Effettuata questa operazione, potrai vedere che è stata creata una cartella con lo stesso nome dell'ambiente virtuale.
Al suo interno, è presente tutto l'occorrente per poterlo gestire:

```bash
$ ls -l
total 8
drwxr-xr-x  12 giandoe  staff  384 31 Apr 99:99 bin
drwxr-xr-x   2 giandoe  staff   64 31 Apr 99:99 include
drwxr-xr-x   3 giandoe  staff   96 31 Apr 99:99 lib
-rw-r--r--   1 giandoe  staff   75 31 Apr 99:99 pyvenv.cfg
```

Nel dettaglio, guardando il contenuto delle sottocartelle vedrai:

```bash
├── bin     # Contiene i file con cui si interagisce con l'ambiente virtuale
│   ├── activate
│   ├── activate.csh
│   ├── activate.fish
│   ├── easy_install
│   ├── easy_install-3.6
│   ├── pip
│   ├── pip3
│   ├── pip3.6
│   ├── python -> python3
│   └── python3 -> /usr/local/bin/python3
├── include # C headers per compilare i pacchetti di Python
├── lib     # La copia di Python installata nel sistema
│   └── python3.6
│       └── site-packages
└── pyvenv.cfg
```


### Attivare un ambiente virtuale

```bash
source <nome ambiente di test>/bin/activate
```

```bash
$ source ambiente_di_test/bin/activate
(ambiente_di_test)giandoe:pev giandoe$
```

Da questo momento in poi, potrai gestire tutti i pacchetti che servono al tuo progetto!


## GESTIRE GLI AMBIENTI VIRTUALI

### Virtualenvwrapper

Il modo migliore per gestire gli ambienti virtuali risulta installando virtualenvwrapper.


#### Installare Virtualenvwrapper

Dall'ambiente virtuale ancora attivo, esegui il comando:

```bash
(ambiente virtuale attivo)$ pip install virtualenvwrapper
```

Esempio:

```bash
$ pip install virtualenvwrapper
Collecting virtualenvwrapper
  Downloading https://files.pythonhosted.org/packages/c1/6b/2f05d73b2d2f2410b48b90d3783a0034c26afa534a4a95ad5f1178d61191/virtualenvwrapper-4.8.4.tar.gz (334kB)
    100% |████████████████████████████████| 337kB 2.9MB/s
Collecting virtualenv (from virtualenvwrapper)
  Downloading https://files.pythonhosted.org/packages/4f/ba/6f9315180501d5ac3e707f19fcb1764c26cc6a9a31af05778f7c2383eadb/virtualenv-16.5.0-py2.py3-none-any.whl (2.0MB)
    100% |████████████████████████████████| 2.0MB 628kB/s
Collecting virtualenv-clone (from virtualenvwrapper)
  Downloading https://files.pythonhosted.org/packages/ba/f8/50c2b7dbc99e05fce5e5b9d9a31f37c988c99acd4e8dedd720b7b8d4011d/virtualenv_clone-0.5.3-py2.py3-none-any.whl
Collecting stevedore (from virtualenvwrapper)
  Downloading https://files.pythonhosted.org/packages/c6/dc/6ee92bccfe3c0448786b30b693e6060d62ec8c4a3ec9a287bac1c1a8d8c9/stevedore-1.30.1-py2.py3-none-any.whl (42kB)
    100% |████████████████████████████████| 51kB 6.0MB/s
Collecting six>=1.10.0 (from stevedore->virtualenvwrapper)
  Downloading https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl
Collecting pbr!=2.1.0,>=2.0.0 (from stevedore->virtualenvwrapper)
  Downloading https://files.pythonhosted.org/packages/07/3e/22d1d35a4b51706ca3590c54359aeb5fa7ea60df46180143a3ea13d45f29/pbr-5.2.0-py2.py3-none-any.whl (107kB)
    100% |████████████████████████████████| 112kB 5.8MB/s
Installing collected packages: virtualenv, virtualenv-clone, six, pbr, stevedore, virtualenvwrapper
  Running setup.py install for virtualenvwrapper ... done
Successfully installed pbr-5.2.0 six-1.12.0 stevedore-1.30.1 virtualenv-16.5.0 virtualenv-clone-0.5.3 virtualenvwrapper-4.8.4
```


#### Configurare Virtualenvwrapper

Dopo aver installato virtualenvwrapper, cercare dove è stato installato:

```bash
which virtualenvwrapper.sh
```

Esempio:

```bash
$ which virtualenvwrapper.sh
/Users/giandoe/pev/ambiente_di_test/bin/virtualenvwrapper.sh
```

Nei sistemi Linux, aprire il file di configurazione .bashrc ed aggiungere le seguenti righe:

```vi
export WORKON_HOME=~/ambienti_virtuali
source <path dove si trova virtualenvwrapper.sh>
```


Esempio:

```bash
$ vi ~/.bashrc
export WORKON_HOME=~/ambienti_virtuali # Path dove saranno creati 
                                       # i nuovi ambienti virtuali
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source /Users/giandoe/pev/ambiente_di_test/bin/virtualenvwrapper.sh

$ source ~/.bashrc
```


#### Creare un nuovo ambiente virtuale

```bash
mkvirtualenv <ambiente virtuale>
```

Esempio:

```bash
$ mkvirtualenv ambiente_di_test
Using base prefix '/usr/local/bin/../Cellar/python/3.6.4_4/bin/../Frameworks/Python.framework/Versions/3.6'
New
Also creating executable in /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/python
Installing setuptools, pip, wheel...
done.
virtualenvwrapper.user_scripts creating /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/predeactivate
virtualenvwrapper.user_scripts creating /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/postdeactivate
virtualenvwrapper.user_scripts creating /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/preactivate
virtualenvwrapper.user_scripts creating /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/postactivate
virtualenvwrapper.user_scripts creating /Users/giandoe/ambienti_virtuali/ambiente_di_test/bin/get_env_details
(ambiente_di_test)giandoe:bin giandoe$
```


#### Attivare un ambiente virtuale

```bash
workon <ambiente virtuale>
```

Esempio:

```bash
$ workon ambiente_di_test
(ambiente_di_test)giandoe:bin giandoe$
```


#### Disattivare un ambiente di test

```bash
deactivate
```

Esempio:

```bash
$ deactivate
giandoe:bin giandoe$
```


#### Visualizzare la lista di tutti gli ambienti di test

```bash
workon
```

oppure:

```bash
lsvirtualenv
```

Esempio:

```bash
$ workon
ambiente_di_test
```

```bash
$ lsvirtualenv
ambiente_di_test
================
```


#### Rimuovere un ambiente virtuale

```bash
rmvirtualenv <ambiente virtuale>
```

Esempio:

```bash
$ rmvirtualenv ambiente_di_test
Removing ambiente_di_test...
```