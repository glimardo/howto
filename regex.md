ESPRESSIONI REGOLARI (bozza)
====

## A COSA SERVE UN'ESPRESSIONE REGOLARE

Serve a cercare un pattern di caratteri all'interno di un testo.


## Metacaratteri

| Carattere | Descrizione | Esempio | Testo in cui cercare | Dove testare | 
| :--: | --| --| --| --|
| ^pattern | Il pattern inizia con | ^cupcake | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern$ | Il pattern termina con | cacke!$ | cupcake e cheesecake! | Prova su https://regexr.com/ |
| . | Qualsiasi carattere | cup...e | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern* | Zero o più caratteri presenti | ca* | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern+ | Uno o più caratteri presenti | che+se | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern? | Zero o un pattern | e? | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern1\|pattern2 | Trova o il primo pattern o il secondo | cup\|cheese | cupcake e cheesecake! | Prova su https://regexr.com/ |
| (abc) | tutti i caratteri compresi nelle parentesi in quell'ordine | (cake) | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern{n} | Esattamente un numero n di caratteri | e{2} | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern{n,} | n o più caratteri | e{1,} | cupcake e cheesecake! | Prova su https://regexr.com/ |
| pattern{n,m} | Da n ad m caratteri | e{1,3} | cupcake e cheesecake! | Prova su https://regexr.com/ |


## Set di caratteri

| Carattere | Descrizione | Esempio | Testo in cui cercare | Dove testare | 
| :--: | --| --| --| --| 
| [] | Un set di catatteri (compresi gli estremi) | [c-u] | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| [abc] | viene cercato uno dei caratteri presenti nelle [] | [aeu] | Mangerò 10 cupcake e 5 fette di cheesecake! |Prova su https://regexr.com/ |
| [a-z] | vengono cercati tutti i caratteri minuscoli compresi nelle [] | [a-z] | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| [A-Z] | vengono cercati tutti i caratteri maiuscoli compresi nelle [] | [A-Z] | Mangerò 10 cupcake e 5 fette di cheesecake!! | Prova su https://regexr.com/ |
| [a-zA-Z] | vengono cercati tutti i caratteri maiuscoli o maiuscoli compresi nelle [] | [A-Mc-z]| Mangerò 10 cupcake e 5 fette di cheesecake!! | Prova su https://regexr.com/ |
| [^pattern] | Tutto tranne i caratteri compresi nelle [] | [^a-z] | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| [0123] | viene cercato uno dei numeri presenti nelle [] | [01] | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| [0-9] |  vengono cercati tutti i numeri compresi tra le [] | [5-9] | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |


## Set di catatteri... in breve!

| Carattere | Descrizione | Esempio | Testo in cui cercare | Dove testare | 
| :--: | --| --| --| --| 
| \w | Trova qualsiasi carattere alfanumerico | \w | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \W | Trova qualsiasi carattere non alfanumerico | \W | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \d | Trova qualsiasi carattere numerico | \d | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \D | Trova qualsiasi carattere non numerico  | \D | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \s | Trova qualsiasi spazio nel testo | \s | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \S | Trova qualsiasi carattere che non sia lo spazio | \S | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| (pattern)\b | Trova le parole che terminano con (caratteri) | (e)\b | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| \b(pattern) | Trova le parole che iniziano con (caratteri) | \b(c) | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |


## Flag

| Flag | Descrizione | Esempio | Testo in cui cercare | Dove testare | 
| :--: | --| --| --| --| 
| pattern/g | global: cerca in tutto il testo | cupcake/g | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| pattern/m  | multiline: cerca in tutte le righe del testo | cupcake/m | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
| pattern/i | case insensitive: cerca ignorando le lettere se sono maiuscole o minuscole | cupcake/i | Mangerò 10 cupcake e 5 fette di cheesecake! | Prova su https://regexr.com/ |
