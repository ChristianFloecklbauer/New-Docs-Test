---
title: "Dokumentlayouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
## Einrichtung

### Einrichten der Dokumentlayouts

Damit die Connector 365 Easy Batch App korrekt genutzt werden kann, müssen Sie zunächst bei den Debitoren, welche Belege im Stapelversand erhalten wollen, dies entsprechend einrichten.

Öffnen Sie den gewünschten Debitor und navigieren Sie in die Dokumentlayouts

**Navigieren -> Dokumentlayouts**

![](images/apps/easynavigatede.PNG)

Dort angekommen, werden Sie zwei neue Kontrollelemente entdecken: eine Checkbox zur Steuerung des Stapelmodus und ein Dropdown-Menü für den Jobmodus.

Der Haken im Feld **Stapelmodus** bewirkt, dass bei der Stapelverarbeitung für die jeweilige Verwendung der hier ausgewählte Jobmodus verwendet wird.

Die Auswahl im Feld **Jobmodus** steuert die Art der Ausgabe der Belege.

![](images/apps/easylayoutde.PNG)

Sie können sämtliche Verwendungszwecke einrichten und im Stapelmodus nutzen. Es ist grundsätzlich möglich, mehrere Jobmodi pro Beleg einzustellen. Diese werden dann nacheinander abgearbeitet.

#### Jobmodus
Der Jobmodus gibt an, wie der Stapel gehandhabt wird. Standardmäßig stehen Ihnen dort drei Optionen zur Verfügung - E-Mail, Druck und Leer.

**E-Mail**
Im Modus E-Mail werden die Belege des Debitors bei Benutzung der Stapelfunktion per E-Mail versendet.

**Druck**
Im Modus Druck werden die Belege des Debitors bei Benutzung der Stapelfunktion ausgedruckt. Es greift der Standard der Druckerauswahl.

**Leer**
Ein leeres Feld ist ein Sonderfall. Es greift dann, wenn der Haken im Feld Stapelmodus nicht gesetzt ist. Kommt es in dieser Konstellation zum Start der Stapelfunktion, so wird das für den jeweiligen Debitor gesetzte *Belegsendeprofil* für die Verarbeitung des Eintrags genutzt. 

Für den Fall, dass Sie entweder die Connector 365 E-POST App, die Connector 365 XRechnung App oder beide Apps einsetzen, so stehen Ihnen noch die folgenden Optionen zur Verfügung:

**XRechnung**
Im Modus XRechnung, werden die Belege des Debitors bei Benutzung der Stapelfunktion als XRechnung versendet. Dieser Modus benötigt ein vorheriges Einrichten der Connector 365 XRechnung App. Weitere Informationen hierzu finden Sie in der Einrichtung der [Connector 365 XRechnung App](/de-de/apps/xrechnung/first-steps/setup/)

**E-POST**
Im Modus E-POST, werden die Belege des Debitors bei Benutzung der Stapelfunktion als Brief versendet. Dieser Modus benötigt ein vorheriges einrichten der Connector 365 E-POST App. Weitere Informationen hierzu finden Sie in der Einrichtung der [Connector 365 E-POST App](/de-de/apps/e-post/first-steps/setup/)

#### Beispiel

Wenn Sie nun für den ausgewählten Debitor den Stapelversand für Rechnungen im Mailversand nutzen wollen, müssen Sie die Einrichtung wie folgt vornehmen.

![](images/apps/easyexamplede.PNG)






