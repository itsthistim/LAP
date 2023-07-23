#Netzwerkdienste
***

# SSL
Secure Socket Layer

*Verschlüsselungsprotokoll*, das entwickelt wurde, um die *Sicherheit bei Datenübertragung über das Internet* zu gewährleisten.

- *sichere und verschlüsselte Kommunikation* zwischen dem Webserver und dem Webbrowser
- schützt übertragenen Daten vor unbefugtem Zugriff
- Authentifizierung des Servers durch *digitale Zertifikate*
 
## SSL-Zertifikate
Digitale Zertifikate, die *von vertrauenswürdigen Zertifizierungsstellen* (Certificate Authorities, CAs) werden ausgestellt.
Sie *dienen zur Authentifizierung* des Webserver-Betreibers und zur *Verschlüsselung der übertragenen Daten*.


## Symmetrische und asymmetrische Verschlüsselung
Bei der symmetrischen Verschlüsselung wird ein gemeinsamer Schlüssel für die Datenverschlüsselung und -entschlüsselung verwendet.

asymmetrischen Verschlüsselung
- öffentlicher 


## Vertrauenswürdige Zertifizierungsstellen
Vertrauenswürdige Zertifizierungsstellen spielen eine wichtige Rolle bei der Sicherheit von SSL.

Webbrowser vertrauen den von diesen Zertifizierungsstellen ausgestellten SSL-Zertifikaten und zeigen dem Benutzer an, ob eine sichere Verbindung besteht.


# TLS
Transport Layer Security

- *Verschlüsselung der Kommunikation* zwischen Client und Server.
- Authentifizierung des Servers durch *digitale Zertifikate*
- *Handshake Protokoll* zum Aufbau einer sicheren Verbindung

## Asymmetrische und Symmetrische Verschlüsselung
### Asymmetrisch
- Schlüsselpaar: Öffentlicher Schlüssel (Verschlüsselung) + Privater Schlüssel (Entschlüsselung)
- *Öffentlicher* Schlüssel *verschlüsselt*
- *Privater* Schlüssel *entschlüsselt*
- *Sicherer Austausch* des öffentlichen Schlüssels
- *Langsamer*, aber Schlüsselaustausch ohne Vorwissen

### Symmetrisch
- *Gleicher Schlüssel* für *Verschlüsselung und Entschlüsselung*
- *Schneller* als asymmetrische Verschlüsselung
- Erfordert *sicheren Vorab-Schlüsselaustausch*
- Häufig für *Datenübertragung nach asymmetrischer Verschlüsselung*