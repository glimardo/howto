GIT
===

<!-- toc -->
Indice
======

- [SETUP DI BASE](#setup-di-base)
  * [Impostare l'utente che effettua i commit](#impostare-lutente-che-effettua-i-commit)
  * [Verificare la configurazione di git](#verificare-la-configurazione-di-git)
- [CREARE UN NUOVO REPOSITORY](#creare-un-nuovo-repository)
  * [Creare la cartella di lavoro](#creare-la-cartella-di-lavoro)
  * [Creare un nuovo repository git](#creare-un-nuovo-repository-git)
  * [Verificare lo stato della cartella di lavoro](#verificare-lo-stato-della-cartella-di-lavoro)
  * [Aggiungere un nuovo file](#aggiungere-un-nuovo-file)
  * [Eliminare un file](#eliminare-un-file)
  * [Salvare i cambiamenti (commit)](#salvare-i-cambiamenti-commit)
  * [Non aggiungere dei file ai commit](#non-aggiungere-dei-file-ai-commit)
  * [Visualizzare lo storico dei commit](#visualizzare-lo-storico-dei-commit)
- [BRANCHING](#branching)
  * [Creare un branch](#creare-un-branch)
  * [Mostrare tutti i branch di un progetto](#mostrare-tutti-i-branch-di-un-progetto)
  * [Cambiare branch su cui lavorare](#cambiare-branch-su-cui-lavorare)
  * [Visualizzare i commit effettuati su di un branch ma non su di un altro](#visualizzare-i-commit-effettuati-su-di-un-branch-ma-non-su-di-un-altro)
  * [Visualizzare le differenze presenti tra due branch](#visualizzare-le-differenze-presenti-tra-due-branch)
  * [Merge dei branch con quello principale](#merge-dei-branch-con-quello-principale)
- [REPOSITORY REMOTI](#repository-remoti)
  * [Pubblicare su GitHub un progetto](#pubblicare-su-github-un-progetto)
  * [Clonare un progetto remoto in locale](#clonare-un-progetto-remoto-in-locale)
  * [Aggiornare un progetto remoto con le nuove modifiche presenti in locale](#aggiornare-un-progetto-remoto-con-le-nuove-modifiche-presenti-in-locale)
  * [Aggiornare un progetto locale con le nuove modifiche presenti in remoto](#aggiornare-un-progetto-locale-con-le-nuove-modifiche-presenti-in-remoto)

<!-- /toc --> 


## SETUP DI BASE

### Impostare l'utente che effettua i commit

```git
git config --global user.name "Nome Cognome"
git config --global user.email tuaemail@esempio.com
```

Esempio:

```bash
$ git config --global user.name "Gian Doe"
$ git config --global user.email gian@doesempio.com
```


### Verificare la configurazione di git

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
Initialized empty Git repository in /home/giandoe/esempio/.git/
```


### Verificare lo stato della cartella di lavoro

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


### Aggiungere un nuovo file 

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


### Eliminare un file 

```git
git rm file_da_eliminare
```

Esempio:

```bash
$ git rm prova1.txt
rm 'prova1.txt'
$ git commit -m "master: eliminato il file prova1.txt"
[master 91acf07] master: eliminato il file prova1.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 prova1.txt
```


### Salvare i cambiamenti (commit)

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


### Non aggiungere dei file ai commit  

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


### Visualizzare lo storico dei commit

```git
git log
```


```bash
$ git log
commit 1141ccbd47c12970fd6e82bbdc735503d375f067
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:88 2219 +0200

    aggiunto il file .gitignore

commit 8f66b5fa3dbd66ed7d7f461e808127e7c63c7520
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:88 2219 +0200

    Aggiunto il file file_di_prova2.txt

commit 83708e9381c86d845e46979be2a26d9719e72e20
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:88 2219 +0200

    Aggiunto il file file_di_prova.txt

```


## BRANCHING

```
In un team, più persone dovranno lavorare su parti diverse di un progetto.
Per non intaccare il progetto originale, ogni membro del team può creare un branch
- una sezione separata dall'originale - dove poter sviluppare tranquillamente la propria parte.
Terminata quest'ultima, poi si potrà riunirla con il progetto principale attraverso un'azione
chiamata merge.
Finchè non viene aggiunto il proprio branch al progetto originale, questo risulterà inaccessibile
agli altri membri del team.
```

### Creare un branch

```git
git checkout -b nuovo_branch
```

Esempio:

```bash
$ git checkout -b nuova_feature
Switched to a new branch 'nuova_feature'

$ git status
On branch nuova_feature
nothing to commit, working directory clean
```

### Mostrare tutti i branch di un progetto

```git
git branch
```

Esempio:

```bash
$ git branch
  master
* nuova_feature
```


### Cambiare branch su cui lavorare

```git
git checkout nome_branch
```

Esempio:

```bash
$ git checkout branch2
Switched to branch 'branch2'
```


### Visualizzare i commit effettuati su di un branch ma non su di un altro

```git
git log primo_branch..secondo_branch

Visualizzo i commit presenti su secondo_branch ma che non ci sono su primo_branch
```

Esempio:

```bash
$ git log branch1..branch2
commit 374881fb96eb5eb13c1cc088a0a4884cb98ae038
Author: Gian Doe <gian@doesempio.com>
Date:   Plu Apr 31 00:00:88 2219 +0200

    branch2: aggiunti file3 e file4
```


### Visualizzare le differenze presenti tra due branch

```git
git diff primo_branch..secondo_branch

Visualizzo le cose presenti in secondo_branch ma che non ci sono su primo_branch
```


Esempio:

```bash
$ git diff branch1..branch2
diff --git a/file3.txt b/file3.txt
new file mode 100644
index 0000000..50139bc
--- /dev/null
+++ b/file3.txt
@@ -0,0 +1 @@
+testo
diff --git a/file4.txt b/file4.txt
new file mode 100644
index 0000000..50139bc
--- /dev/null
+++ b/file4.txt
@@ -0,0 +1 @@
+testo
```


### Merge dei branch con quello principale

```git
git checkout master    # prima si torna al ramo principale
git merge nuovo_branch # poi si uniscono i branch
```

Esempio:

```bash
$ git checkout master
Switched to branch 'master'

$ git merge nuova_feature
Updating 3144cfe..a938ddb
Fast-forward
 esempio1.txt | 1 +
 esempio2.txt | 1 +
 2 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 esempio1.txt
 create mode 100644 esempio2.txt
```


## REPOSITORY REMOTI

### Pubblicare su GitHub un progetto

1 - Creare un repository su GitHub

Accedi a GitHub e crea un nuovo repository

2 - Inizializza il progetto

```git
git init
```

Esempio:

```bash
$ git init
```

3 - Aggiungi i file necessari al repository

```git
git add .
git commit -m "Motivo del commit"
```

Esempio:

```bash
$ git add .
$ git commit -m "Primo commit di esempio"
[master (root-commit) d34a35d] Primo commit di esempio
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 esempio1.txt
 create mode 100644 esempio2.txt
```

4 - Aggiungere il repository remoto

```git
git remote add origin <indirizzo GitHub>/<repository>.git
```

Esempio:

```bash
$ git remote add origin https://github.com/glimardo/esercizi.git
```

5 - Allinea il repository locale con quello di GitHub

```git
git push -u origin master
```

Esempio:

```bash
$ git push -u origin master
Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 235 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/glimardo/esercizi.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
```

```
Verificando sul repository di GitHub, troverai i nuovi file!
```


### Clonare un progetto remoto in locale

```git
git clone <indirizzo repository remoto>/<repository>.git
```

Esempio:

```bash
$ git clone https://github.com/glimardo/esercizi.git
Cloning into 'esercizi'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
Checking connectivity... done.
```


### Aggiornare un progetto remoto con le nuove modifiche presenti in locale

```git
git push origin master
```

Esempio:

```bash
$ git push origin master
Counting objects: 2, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 259 bytes | 0 bytes/s, done.
Total 2 (delta 0), reused 0 (delta 0)
To https://github.com/glimardo/esercizi.git
   d34a35d..95b7bee  master -> master
```


### Aggiornare un progetto locale con le nuove modifiche presenti in remoto

```git
git pull
```

Esempio:

```bash
$ git pull
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/glimardo/esercizi
   95b7bee..bd1d6a0  master     -> origin/master
Updating 95b7bee..bd1d6a0
Fast-forward
 esempio4.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 esempio4.txt
```
