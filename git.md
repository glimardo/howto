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

```bash
git config --global user.name "Nome Cognome"
git config --global user.email tuaemail@esempio.com
```

Esempio:

```bash
$ git config --global user.name "Gian Doe"
$ git config --global user.email gian@doesempio.com
```


## VERIFICARE LO STATO DELLA CARTELLA DI LAVORO

```bash
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
