ESPRESSIONI REGOLARI (bozza)
====

## A COSA SERVE UN ESPRESSIONE REGOLARE

Serve a cercare un pattern di caratteri all'interno di un testo.


## Ricerca esatta

```regex
/testo da cercare/g    # cerco "testo da cercare" in modo globale (/g) in tutto il testo
```

## Metacaratteri

| Carattere | Descrizione | Esempio | Testo in cui cercare |
| --| --| --| --| 
| ^ | La parola inizia con | ^cupcake | cupcake e cheesecake! |
| $ | La parola termina con | cacke!$ | cupcake e cheesecake! |
| . | Qualsiasi carattere | cup...e | cupcake e cheesecake! |
| * | Zero o più caratteri presenti | ca.e | cupcake e cheesecake! | 
| + | Uno o più caratteri presenti | che+se | cupcake e cheesecake! | 
| [] | Un set di catatteri (compresi gli estremi) | [a-z] | cupcake e cheesecake! | 
| [^] | Tutto tranne un set di caratteri | [^a-z] | cupcake e cheesecake! | 
| {} | Esattamente questo numero di caratteri | e{2} | cupcake e cheesecake! | 
| \| | significa "o questo o quello" | cup\|cheese | cupcake e cheesecake! | 
| () | tutti i caratteri compresi nelle parentesi in quell'ordine | (cake) | cupcake e cheesecake! | 


