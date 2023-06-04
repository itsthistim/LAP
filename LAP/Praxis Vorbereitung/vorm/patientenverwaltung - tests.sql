/*
	Tim Hofmann
    31.05.2023
    Vorbereitung auf die LAP
    Patientenverwaltung - Tests
*/

use patientenverwaltung;

# Test Selects

# Personendaten
select concat(p.firstname, ' ', p.lastname) as Patient, p.svnr as `SV-Nummer`, sv.name as Versicherung
  from patient p, sozialversicherung sv
where p.sozialversicherung_id = sv.id;

# Alle Befunde des Patienten mit Nachnamen "Berger"
select b.id as `Befund-Nummer`, concat(p.firstname, ' ', p.lastname) as `Patient`
  from befund b, patient p
  where b.patient_id = p.id
    and p.lastname like '%Berger%';
    
# Alle verschriebenen Medikamente für Patient mit Nachnamen "Mustermann"
select m.name as `Medikament`, bm.dosierung as `Dosierung`
  from befund b, patient p, befund_medikament bm, medikament m
  where b.patient_id = p.id
    and bm.befund_id = b.id
    and bm.medikament_id = m.id
    and p.lastname like '%Mustermann%';

# Test Inserts

# Verschreiben von Medikamenteen bei einem Termin eines neuen Patienten
# 1) Patient registrieren
insert into patient (firstname, lastname, sozialversicherung_id, svnr)
     values ('Tim', 'Hofmann', 1, '3456031101');
## Die Sozialversicherungsnummer wird als varchar gespeichert, um etwaige Besonderheiten und unregelmäßige Nummern zu entgehen
## Dennoch kann die SV-Nummer nur 10 Zeichen lang sein, da dies in Österreich de Standard ist, und diese Arztpraxis nur österreichische Gäste behandelt.

# 2) Dem Patienten einen Befund austellen...
insert into befund (patient_id, termin)
     values (6, '2023-05-31 11:00:00');
## Ein ungültiges Datum würde abgefangen werden, und der Befund kann nicht erstellt werden.

# ... und in diesem Medikamente verschreiben
insert into befund_medikament (befund_id, medikament_id, dosierung)
     values (6, 2, '1x Vormittags, 1x Abends');

insert into befund_medikament (befund_id, medikament_id, dosierung)
     values (6, 1, '1x Mittags');

# 3) Anschließend können alle verschriebenen Medikamente eingesehen werden
select m.name as `Medikament`, bm.dosierung as `Dosierung`
  from befund b, patient p, befund_medikament bm, medikament m
 where b.patient_id = p.id
   and bm.befund_id = b.id
   and bm.medikament_id = m.id
    and p.lastname like '%Hofmann%';