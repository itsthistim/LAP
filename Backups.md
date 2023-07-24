#Security
***

Sicherung von Daten

Aspekte
- Automatisierung des Backup-Prozesses: Tools, Zeitpläne zum automatischen ausführen von Backups
- Überprüfung der Backup-Integrität (Daten vollständing und erfolgreich gesichert?)
- Testen der Wiederherstellung (regelmäßige Tests der Wiederherstellungsfunktion)
- Verschlüsselung der Backups
- Überwachung und Aktualisierung der Backup-Strategie

## Backup-Prinzipien
### Full Backup
 - einfachste Backup-Prinzip
 - *alle Daten und Dateien* in einem *einzigen Durchlauf* werden *vollständig gesichert*

### Inkrementelles Backup
 - nur die Änderungen und Ergänzungen seit dem letzten Backup
- *neue oder geänderte Daten*
- alle inkrementellen Backups müssen *zusammen mit dem letzten Vollbackup* wiederhergestellt

- weniger benötigter Speicherplatz
- weniger Zeitaufwand

### Mirror Backup
- Daten werden in *Echtzeit auf separates Speichermedium kopiert*
- 1:1-Kopie, alle Daten synchron

- sofortige Verfügbarkeit der Daten
- Dataguard in TGW

### Hybrid Backup
- *kombiniert* verschiedene Backup-Prinzipien
- beispielsweise Kombination aus regelmäßigen Vollbackups und inkrementellen Backups

- schnelle Wiederherstellung von Vollbackups + Effizienz von inkrementellen Backups

### Archivierung
- Verfahren zur langfristigen Aufbewahrung von *nichtgenutzten Daten*
- aus rechtlichen oder geschäftlichen Gründen aufbewahrt

## Lagerung von Backups
- kühler, trockener Ort
- fern von direkter Sonneneinstrahlung, Extremtemperaturen, und magnetischen Feldern
- regelmäßige Kontrollen

### Speichermedien für Backups
#### Festplatten (HDD/SSD)
- hohe Kapazität
- schnelle Datenübertragungsrate
- gut für regelmäßige Backups und schnelle Wiederherstellung

#### Bandlaufwerke
- hohen Speicherkapazität
- hohe Zuverlässigkeit
- besonders für Archivierungszwecke

#### Optische Medien (CDs/DVDs/Blu-ray-Discs)
Optische Medien sind kostengünstig und einfach zu verwenden. Sie eignen sich gut für kleine Datenmengen und gelegentliche Backups

#### Cloud-Speicher
Die Daten werden in hochsicheren Rechenzentren gespeichert, die Redundanz und Wiederherstellungsoptionen bieten.

#### Externe Laufwerke
Externe Laufwerke wie USB-Sticks und externe Festplatten bieten eine einfache und portable Backup-Lösung.
Wichtig ist auch der Schutz vor unbefugtem Zugriff, beispielsweise durch die Verwendung von Verschlüsselung oder Kennwortschutz.