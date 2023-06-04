#LAP
# Info Center
## Installation
### Database
- [MariaDB Server](https://mariadb.org/download/?t=mariadb)
- [MySQL](https://www.mysql.com/de/downloads/)
### IDEs
- [VSCode](https://code.visualstudio.com/download)
- [PhpStorm](https://www.jetbrains.com/de-de/phpstorm/download/#section=windows)
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- [DataGrip](https://www.jetbrains.com/de-de/datagrip/download/#section=windows)
### Languages
- [XAMPP](https://www.apachefriends.org/de/index.html)
- [Node.js](https://nodejs.org/en)
### Other
- [Git](https://gitforwindows.org/)
## Setting Up
### PHP
[XAMPP](https://www.apachefriends.org/de/index.html) installieren, und unter `C:\xampp\php` die `php.exe` suchen. Diese muss in [PhpStorm](https://www.jetbrains.com/de-de/phpstorm/download/#section=windows) bzw auch in [VSCode](https://code.visualstudio.com/download) in den Settings hinterlegt werden um mit PHP arbeiten zu können.
#### PhpStorm
?
#### VSCode
Bei den Extensions `PHP Server` suchen und installieren. Anschließend in die Extension Settings öffnen und den Pfad zum installierten PHP hinterlegen:
![[PHP Server Settings.png]]
![[PHP Path VSCode.png]]

Dann kann man `.php` Files mit dem "Serve" button oben rechts direkt im Browser öffnen. Die Ansicht aktualisiert sich automatisch jedes mal wenn die `.php` File in VSCode gespeichert wird.
![[PHP Serve Project.png]]
### Node.js
Nachdem [Node.js](https://nodejs.org/en) installiert wurde, einen Projektordner anlegen, und in diesem via dem Terminal oder CMD `npm init -y` ausführen, um ein neues Node Projekt anzulegen.
Anschließend muss man noch express, dotenv und mysql mit `npm i express dotenv mysql2` installieren, um etwas Funktionsfähiges bauen zu können.

Alternativ kann auch ein Framework wie [Next.js](https://nextjs.org/) (React), [Nuxt.js](https://nuxtjs.org/) (Vue) oder auch [Astro](https://astro.build/) (Mischung) verwendet werden.

Siehe auch [[@Fachgespräch Vorbereitung]]