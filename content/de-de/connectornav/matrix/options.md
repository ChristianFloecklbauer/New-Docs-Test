---
title: "Optionen der Kommunikationsmatrix"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 9
---

### Optionen & erweiterte Optionen der Kommunikationsmatrix

Im folgenden sind Screenshots der Kommunikationsmatrix mit allen enthaltenden Feldern zu sehen.
Die Felder sind durchnummeriert, und werden in der darunterstehenden Tabelle jeweils näher erläutert:

<!-- static -->
|![](images/connectornav/matrix/kom_matrix_demo_1_mt.png)|
|-|

|![](images/connectornav/matrix/kom_matrix_demo_2_mt.png)|
|-|

| **Feld**                                            | **Name**                    | **Funktion**                                                                     |
|-----------------------------------------------------|-----------------------------|----------------------------------------------------------------------------------|
| 1                                                   | **Stapelmodus**             | legt fest, ob der Eintrag ebenfalls für die Verarbeitung im Stapelmodus gilt     |
| 2                                                   | **Jobmodus**                |hier wird der Jobmodus, für den der Eintrag gelten soll, ausgewählt               |
| 3                                                   | **TabellenID**              | legt fest, auf welche Tabelle sich der Eintrag bezieht (Deb./Kred./Kontakt)      |
| 4                                                   | **Tabellenname**            | wird automatisch mit dem Namen der Tabelle gefüllt                               |
| 5                                                   | **Nr.**                     | Lfd. Nummer des Deb./Kred./Kontakts                                              |
| 6                                                   | **Name**                    | wird automatisch mit dem Namen des Deb./Kred./Kontakts gefüllt                   |
| 7                                                   | **BerichtsID**              | hier wird der Bericht ausgewählt, für den der Eintrag gilt                       |
| 8                                                   | **Berichtsname**            | wird automatisch mit dem Namen des Berichts gefüllt                              |
| 9                                                   | **Zieladresse**             | legt die Zieladresse je nach Jobmodus fest (E-Mail/Fax-Nr. etc.)                 |
| 10                                                  | **Weitere Zieladressen**    | legt zusätzliche Zieladressen für CC/BCC für Jobmodus eMail fest                 |
| 11                                                 | **Betreff**                 | aus individuell setzbaren Platzhalern automatisch generierte Betreffzeile (mehr dazu [hier](de-de/connectornav/matrix/subject))       |
| **nur nutzbar mit Modul XRechnung**|||
| 12                                                  | **PEPPOL Verwendung**       | legt fest, ob bzw. wo PEPPOL verwendet wird                                      |
| 13                                                  | **PEPPOL Version**          | legt fest, welche Version von PEPPOL eingesetzt werden soll                      |
| 14                                                  | **XRechnung**               | legt fest, ob XRechnung genutzt wird                                             |
| 15                                                  | **Leitweg-ID**              | legt die jeweilige Leitweg-ID für die XRechnung fest                             |
| 16                                                  | **XRechnung PDF als Anhang**| legt fest, ob der XRechnung der jeweiige Inhalt als PDF angehangen wird          | 
| **nur nutzbar mit Modul pdfPaper**|||
| 17                                                  | **PDFA Ebene**              | legt fest, ob und welche PDF/A Ebene verwendet werden soll                       |
| 18                                                  | **PDF-Passwort**            | legt ein Passwort fest, mit dem die versendeten PDF-Dateien verschlüsselt werden |
| 19                                                  | **Server Ausdruck Drucker** | legt den Drucker fest, über den Belege ausgedruckt werden sollen                 |
