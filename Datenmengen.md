#Grundlagen_Informatik 
***

# Bits und Bytes
## Bit (b)
- *kleinste Informationseinheit* in der Computertechnologie
- entweder *0 oder 1*
- stellen ein *elektrisches Signal* dar → ON oder OFF

## Byte (B)
1 Byte = 8 Bit

- oft als *Einheit der Datenspeicherung* verwendet
- in größere Einheiten gruppierbar (siehe dezimale und binäre Einheiten)

# Dezimale Einheiten
- basieren auf Dezimalsystem
- *SI-Einheiten* (Systeme International d'Unites)
- in Alltagssprache verwendet

- Umwandlungsfaktor zur nächsten Einheit: *1000*

| SI-Vorsilbe | Zeichen | Faktor          | Verwendung                              |
| ----------- | ------- | --------------- | --------------------------------------- |
| Exa         | E       | 10<sup>18</sup> | Supercomputer, globale Netzwerke        |
| Peta        | P       | 10<sup>15</sup> | Rechenzentren, [[Big Data]] Anwendungen |
| Tera        | T       | 10<sup>12</sup> | Festplatten, Server, Cloud-Dienste      | 
| Giga        | G       | 10<sup>9</sup>  | Festplatten, USB-Sticks                 |
| Mega        | M       | 10<sup>6</sup>  |                                         |
| Kilo        | k       | 10<sup>3</sup>  |                                         |


# Binäre Einheiten
- basieren auf Binärsystem
- *IEC-Präfixe* (International Electronic Commission)
- höhere Kapazität als dezimale Einheiten

- Umwandlungsfaktor zur nächsten Einheit: *1024*

| Binärpräfix | Zeichen | Faktor         | Verwendung                              |
| ----------- | ------- | -------------- | --------------------------------------- |
| Exbi        | Ei      | 2<sup>60</sup> | Supercomputer, globale Netzwerke        |
| Pebi        | Pi      | 2<sup>50</sup> | Rechenzentren, [[Big Data]] Anwendungen |
| Tebi        | Ti      | 2<sup>40</sup> | Festplatten, Server, Cloud-Dienste      | 
| Gibi        | Gi      | 2<sup>30</sup> | Festplatten, USB-Sticks                 |
| Mibi        | Mi      | 2<sup>20</sup> |                                         |
| Kibi        | ki      | 2<sup>10</sup> |                                         |



# Berechnung

Menge * Quellfaktor / Zielfaktor

z.B.
4 GB → GiB
```math
4 * 10^9 / 2^30
```
= 3,725 GiB

4 GiB → GB
```math
4 * 2^30 / 10^9
```
= 4,295 GiB
