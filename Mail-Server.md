#Netzwerkdienste
***

## E-Mail-Protokolle
Mail-Server verwenden verschiedene Protokolle, um E-Mails zu empfangen, zu senden und zu speichern.
Die gängigsten E-Mail-Protokolle sind [[SMTP]] zum Senden von E-Mails und [[IMAP]] oder [[POP3]] zum Empfangen und Abrufen von E-Mails.

## E-Mail-Adressen
Ein Mail-Server arbeitet mit E-Mail-Adressen, die aus zwei Teilen bestehen:
- Benutzername (vor dem @-Symbol)
- Domain (nach dem @-Symbol)

Beispiel: [benutzername@domain.com](mailto:benutzername@domain.com).

## E-Mail-Zustellung
Wenn eine E-Mail gesendet wird, verwendet der Mail-Server das [[SMTP]]-Protokoll, um sie an den *Ziel-Mail-Server zu übertragen*.
Der Ziel-Mail-Server *überprüft die E-Mail-Adresse des Empfängers* und *speichert die E-Mail* in einem entsprechenden Postfach.

## Postfächer und Speicherung
Ein Mail-Server verfügt über Postfächer, in denen E-Mails für jeden Benutzer gespeichert werden.
Die E-Mails werden in einem *bestimmten Format* auf dem Mail-Server gespeichert, um einen *späteren Zugriff zu ermöglichen*.

## E-Mail-Client und Abruf
Ein *E-Mail-Client* (wie Outlook oder Thunderbird) wird verwendet, um E-Mails von einem Mail-Server *abzurufen und anzuzeigen*. Dabei wird entweder das [[IMAP]]- oder das [[POP3]]-Protokoll verwendet, um die *E-Mails vom Server auf den lokalen Computer oder das Gerät des Benutzers herunterzuladen*.