#Netzwerkdienste
***
Simple Mail Transfer Protocol

Netzwerkprotokoll, das für den *Transfer von E-Mails über das Internet* verwendet wird.
Es dient zum *Senden von E-Mails* (Absender-Mail-Server → Empfänger-Mail-Server)

SMTP und SMTPS werden hauptsächlich *für den E-Mail-Versand* verwendet und sind *nicht für den Empfang von E-Mails zuständig*.
Für den Empfang von E-Mails werden andere Protokolle wie [[POP3]] oder [[IMAP]] eingesetzt.


## Verbindungsaufbau
Um eine E-Mail zu senden, muss der E-Mail-Client (z.B. Outlook) eine *Verbindung zum SMTP-Server* herstellen.
Der *E-Mail-Client authentifiziert sich* normalerweise beim Server und *sendet dann die E-Mail* zur weiteren Zustellung.


## SMTPS (SMTP Secure)
SMTPS ist die *sichere Version* von SMTP und verwendet eine *SSL/TLS-Verschlüsselungsschicht*, um den E-Mail-Verkehr zu schützen.
Es stellt sicher, dass die *E-Mail-Daten während der Übertragung verschlüsselt* sind und vor unbefugtem Zugriff geschützt werden.