ESPRESSIONI REGOLARI (bozza)
====

## A COSA SERVE UN'ESPRESSIONE REGOLARE

Serve a cercare un pattern di caratteri all'interno di un testo.

Prova gli esempi indicati su https://regexr.com/


## Ricerca esatta

```regex
/pattern/g    # cerco il pattern in modo globale (/g) in tutto il testo
```

## Metacaratteri

| Carattere | Descrizione | Esempio | Testo in cui cercare |
| :--: | --| --| --| 
| ^ | Il pattern inizia con | ^cupcake | cupcake e cheesecake! |
| $ | Il pattern termina con | cacke!$ | cupcake e cheesecake! |
| . | Qualsiasi carattere | cup...e | cupcake e cheesecake! |
| * | Zero o più caratteri presenti | ca.e | cupcake e cheesecake! | 
| + | Uno o più caratteri presenti | che+se | cupcake e cheesecake! | 
| {n} | Esattamente questo numero di caratteri | e{2} | cupcake e cheesecake! | 
| \| | significa "o questo o quello" | cup\|cheese | cupcake e cheesecake! | 
| (abc) | tutti i caratteri compresi nelle parentesi in quell'ordine | (cake) | cupcake e cheesecake! | 


## Set di caratteri

| Carattere | Descrizione | Esempio | Testo in cui cercare |
| :--: | --| --| --| 
| [] | Un set di catatteri (compresi gli estremi) | [c-u] | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| [abc] | viene cercato uno dei caratteri presenti nelle [] | [aeu] | Mangerò 10 cupcake e 5 fette di cheesecake! |
| [a-z] | vengono cercati tutti i caratteri minuscoli compresi nelle [] | [a-z] | Mangerò 10 cupcake e 5 fette di cheesecake! |
| [A-Z] | vengono cercati tutti i caratteri maiuscoli compresi nelle [] | [A-Z] | Mangerò 10 cupcake e 5 fette di cheesecake!! |
| [a-zA-Z] | vengono cercati tutti i caratteri maiuscoli o maiuscoli compresi nelle [] | [A-Mc-z]| Mangerò 10 cupcake e 5 fette di cheesecake!! |
| [^] | Tutto tranne i caratteri compresi nelle [] | [^a-z] | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| [0123] | viene cercato uno dei numeri presenti nelle [] | [01] | Mangerò 10 cupcake e 5 fette di cheesecake! |
| [0-9] |  vengono cercati tutti i numeri compresi tra le [] | [5-9] | Mangerò 10 cupcake e 5 fette di cheesecake! |


## Set di catatteri... in breve!

| Carattere | Descrizione | Esempio | Testo in cui cercare |
| :--: | --| --| --| 
| \w | Trova qualsiasi carattere alfanumerico | \w | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \W | Trova qualsiasi carattere non alfanumerico | \W | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \d | Trova qualsiasi carattere numerico | \d | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \D | Trova qualsiasi carattere non numerico  | \D | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \s | Trova qualsiasi spazio nel testo | \s | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \S | Trova qualsiasi carattere che non sia lo spazio | \S | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| (caratteri)\b | Trova le parole che terminano con (caratteri) | (e)\b | Mangerò 10 cupcake e 5 fette di cheesecake! | 
| \b(caratteri) | Trova le parole che iniziano con (caratteri) | \b(c) | Mangerò 10 cupcake e 5 fette di cheesecake! | 


## Flag

| Flag | Descrizione | 
| :--: | --|
| g | global: cerca in tutto il testo |
| m | multiline: cerca in tutte le righe del testo |
| i | case insensitive: cerca ignorando le lettere se sono maiuscole o minuscole |
