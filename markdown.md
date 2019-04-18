MARKDOWN
========

<!-- toc -->
Indice
======
- [Titoli](#titoli)
- [Formattazione del testo](#formattazione-del-testo)
- [Citazioni](#citazioni)
- [Link](#link)
  * [Link ad un testo](#link-ad-un-testo)
  * [Link automatici](#link-automatici)
  * [Disabilitare i link automatici](#disabilitare-i-link-automatici)
- [Immagini](#immagini)
- [Tabella](#tabella)
  * [Creare una tabella](#creare-una-tabella)
  * [Allineamento dei campi](#allineamento-dei-campi)
- [Note](#note)
- [Liste](#liste)
  * [Ordinate](#ordinate)
  * [Non ordinate](#non-ordinate)
- [Evidenziazione del codice](#evidenziazione-del-codice)
<!-- /toc -->

# Titoli

| Markdown  | Output |
| ----------- | ----------- |
| ``` # Titolo ``` | <h1> Titolo </h1> |
| ``` ## Titolo ``` | <h2> Titolo </h2> |
| ``` ### Titolo ``` | <h3> Titolo </h3> |
| ``` #### Titolo ``` | <h4> Titolo </h4> |


# Formattazione del testo
 
| Markdown  | Output |
| ----------- | ----------- |
| ``` **Grassetto** ``` | <b>Grassetto</b> |
| ``` *Corsivo* ``` | <i>Grassetto</i> |


# Citazioni

Markdown:

```markdown
> Sono una citazione!
```

Output:

> Sono una citazione!


# Link

## Link ad un testo

Markdown:

```
[Testo](Link)
```

Output:
[La mia pagina GitHub!](https://github.com/glimardo)


## Link automatici

Markdown:

```
https://github.com/glimardo

miaemail@esempio.xyz 
```

Output: 

https://github.com/glimardo

miaemail@esempio.xyz 


## Disabilitare i link automatici

Markdown:

```
`https://github.com/glimardo`

`miaemail@esempio.xyz`
```

Output: 

`https://github.com/glimardo`  


`miaemail@esempio.xyz`


# Immagini

Markdown:
```
 	![Testo alternativo in caso non si vedesse l'immagine](link)
```

Output:  
	![Simbolo di GitHub](https://avatars1.githubusercontent.com/u/9919?s=200&v=4)


# Tabella

## Creare una tabella

Markdown:

```
| Colonna 1  | Colonna 2 | Colonna n |
| ----------- | ----------- | ----------- |
| Testo | Testo | Testo |
| Testo | Testo | Testo |
```

Output:

| Colonna 1  | Colonna 2 | Colonna n |
| ----------- | ----------- | ----------- |
| Testo | Testo | Testo |
| Testo | Testo | Testo |

> Attenzione! Nelle tabelle non puoi formattare l'intestazione,
> inserire note, scrivere liste, aggiungere immagini
> o semplicemente inserire dei tag html

## Allineamento dei campi

Markdown:

```
| Allineamento a Sinistra  | Allineamento al centro | Allineamento a destra |
| :--- | :---: | ---:  |
| Testo | Testo | Testo |
| Testo | Testo | Testo |
```

Output:  

| Allineamento a Sinistra  | Allineamento al centro | Allineamento a destra |
| :--- | :---: | ---:  |
| Testo | Testo | Testo |
| Testo | Testo | Testo |


# Note

Markdown:

```
Sto richiamando una nota [^1]
Anche io [^2]

[^1]: Prima nota  
[^2]: Seconda nota
```

Output:  

Sto richiamando una nota [^1]
Anche io [^2]

[^1]: Prima nota
[^2]: Seconda nota


# Liste

## Ordinate

Markdown:

```markdown
1. Primo punto  
    1. primo sottopunto  
        1. sottopunto  
    2. secondo sottopunto   
        1. sottopunto
2. Secondo punto
3. Terzo punto
```

Output:

1. Primo punto  
    1. primo sottopunto  
        1. sottopunto  
    2. secondo sottopunto   
        1. sottopunto
2. Secondo punto
3. Terzo punto


## Non ordinate

Markdown:

```markdown
- Primo punto
    - primo sottopunto
        - sottopunto
- Secondo punto
- Terzo punto
```

Output:
- Primo punto
    - primo sottopunto
        - sottopunto
- Secondo punto
- Terzo punto


# Evidenziazione del codice

Markdown:

<pre>

```
Sono un blocco di codice... anche se di nessun linguaggio!
```

```Python
print("Sono del codice Python!")
```

```Ruby
puts "Sono del codice Ruby!"
```

</pre>

Output:

```
Sono un blocco di codice... anche se di nessun linguaggio!
```

```Python
print("Sono del codice Python!")
```

```Ruby
puts "Sono del codice Ruby!"
```
