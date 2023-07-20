#Grundlagen_Informatik 
***

# Dezimalsystem
- Ziffern 0-9

- alltägliche Rechenoperationen.

# Binärsystem
- Ziffern 0-1

- IT-Industrie (auf binärer Logik basierend)

# Hexadezimalsystem

- Ziffern 0-9; A-F

- Vereinfachung und Komprimierung von Binärdaten
- große Binärzahlen können als Hexadezimalzahlen kürzer und einfacherer dargestellt werden
- z.B. Darstellung von Farben


# Umwandlung

## Dezimal → Binär
Erfolgt durch *Division mit 2* und anschließendes Aufschreiben des *Rests*.
Die Binärzahl wird durch die *umgekehrte Reihenfolge der Reste* abgeleitet.

| 13<sub>10</sub>       |    | Rest |
| ------ | --- | ---- |
| 13 / 2 | 6   | 1    |
| 6 / 2  | 3   | 0    |
| 3 / 2  | 1   | 1    |
| 1 / 2  | 0   | 1    |
→ 1101<sub>2</sub>

## Dezimal → Hex
Erfolgt durch *Division mit 16* und Aufschreiben des *Rests*.
Ist der Rest zweistellig, wird die Hexadezimalzahl der entsprechende Ziffer aufgeschrieben. (A - F)
Die Hexadezimalzahl wird durch die umgekehrte Reihenfolge der Reste abgeleitet.

| 2018<sub>10</sub> |     | Rest<sub>10</sub> | Rest<sub>16</sub> |
| ----------------- | --- | ----------------- | ----------------- |
| 2018 / 16         | 126 | 2                 | 2                 |
| 126 / 16          | 7   | 14                | E                 |
| 7 / 16            | 0   | 7                 | 7                 |
→ 7E2<sub>16</sub>

## Binär → Dezimal
Erfolgt durch *Multiplikation jeder Binärstelle* mit der *entsprechenden Potenz von 2* und *Addition* der Ergebnisse.

101<sub>2</sub>
```math
1 * 2^2 + 0 * 2^1 + 1 * 2^0
```
→ 5<sub>10</sub>

## Binär → Hex
Erfolgt durch Gruppierung der Binärziffern in *4er-Blöcke* und Zuordnung jedes 4er-Blocks zu seiner *entsprechenden Hexadezimalziffer*.

1001101101<sub>2</sub>

1101<sub>2</sub> = 13<sub>10</sub> = D<sub>16</sub>
0110<sub>2</sub> = 6<sub>10</sub> = 6<sub>16</sub>
10<sub>2</sub> = 2<sub>10</sub> = 2<sub>16</sub>

→ 26D<sub>16</sub>

## Hex → Dezimal
Erfolgt durch *Multiplikation jeder Hexadezimalziffer* mit der entsprechenden *Potenz von 16* und Addition der Ergebnisse.

F3A<sub>16</sub>
```math
# F * 16^2 + 3 * 16^1 + A * 16^0
15 * 16^2 + 3 * 16^1 + 10 * 16^0
```
→ 3898<sub>10</sub>


## Hex → Binär
Erfolgt durch *Zuordnung* jeder *Hexadezimalziffer* zu ihrer entsprechenden *Binärsequenz*.

9B<sub>16</sub>

9<sub>16</sub> = 1001<sub>2</sub>
B<sub>16</sub> = 1011<sub>2</sub>

→ 10011011<sub>2</sub>

