GIT
===


## CREARE UN NUOVO REPOSITORY

### Creare la cartella di lavoro

```
La prima azione da compiere riguarda la creazione della cartella di lavoro
dove sarà salvato il tuo lavoro
```

Esempio:

```bash
$ mkdir esempio
$ cd esempio
$ pwd
/home/gian/esempio
```


### Creare un nuovo repository git

```git
git init
```

Esempio:

```bash
$ git init
Initialized empty Git repository in /home/gian/esempio/.git/
```


## IMPOSTARE L'UTENTE CHE EFFETTUA I COMMIT

```git
git config --global user.name "Nome Cognome"
git config --global user.email tuaemail@esempio.com
```

Esempio:

```bash
$ git config --global user.name "Gian Doe"
$ git config --global user.email gian@doesempio.com
```


## VERIFICARE LA CONFIGURAZIONE DI GIT

```git
git config --list
```

Esempio:

```bash
$ git config --list
user.name=Gian Doe
user.email=gian@doesempio.com
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
```


## VERIFICARE LO STATO DELLA CARTELLA DI LAVORO

```git
git status
```

```
Con git status si mostra:  
- lo stato della cartella di lavoro
- le modifiche effettuate
- i file ancora non tracciati 
```

Esempio:

```bash
git status
On branch master

Initial commit

nothing to commit (create/copy files and use "git add" to track)
```


## AGGIUNGERE UN NUOVO FILE 

```git
git add nome_file # aggiunge solo nome_file
```

```git
git add * # aggiunge tutti i file presenti nella cartella
```

Esempio:

```bash

$ touch file_di_prova.txt # Creo un file vuoto
$ git status              # Controllo lo stato del repo 
On branch master          # con un file senza commit

Initial commit

Untracked files:          # git ti avverte che esistono dei file non committati! 
  (use "git add <file>..." to include in what will be committed) # e come fare per aggiungerli!

        file_di_prova.txt

$ git add file_di_prova.txt
$ git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   file_di_prova.txt

```


## SALVARE I CAMBIAMENTI NELLA CARTELLA DI LAVORO (COMMIT)

```git
git commit -m "Motivo del commit"
```

Esempio:

```bash
$ git commit -m "Aggiunto il file file_di_prova.txt"
[master (root-commit) 83708e9] Aggiunto il file file_di_prova.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file_di_prova.txt
$ git status
On branch master
nothing to commit, working directory clean
```


## NON AGGIUNGERE DEI FILE AI COMMIT  

```
Quando effettui i git commit, non devi committare tutta la cartella!
Salva solo i file necessari al progetto, quindi niente:
- cartelle di appoggio
- file temporanei
- file generati
- file privati
- credenziali di accesso
- qualsiasi cosa che non sia strettamente necessaria al progetto

Come fare per ignorare questi file?
Occorre creare il file .gitignore ed inserire in colonna ogni file e 
cartella che si deve ignorare
```

```
.gitignore
```

Esempio:

```bash
$ vi .gitignore
$ cat .gitignore
*.abc
$ git add .gitignore
$ git commit -m "aggiunto il file .gitignore"
[master 1141ccb] aggiunto il file .gitignore
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore
$ git status
On branch master
nothing to commit, working directory clean
```


## VISUALIZZARE LO STORICO DEI COMMIT

```git
git log
```


```bash
$ git log
commit 1141ccbd47c12970fd6e82bbdc735503d375f067
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:07 2219 +0200

    aggiunto il file .gitignore

commit 8f66b5fa3dbd66ed7d7f461e808127e7c63c7520
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:56 2219 +0200

    Aggiunto il file file_di_prova2.txt

commit 83708e9381c86d845e46979be2a26d9719e72e20
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:28 2219 +0200

    Aggiunto il file file_di_prova.txt

```
