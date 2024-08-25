---
title: "Upgrade der Jobliste (CON Joblist)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Upgrade aus der Connector 365 Einrichtung

Bitte prüfen Sie die [Voraussetzungen](/de-de/apps/connector-upgrade/first-steps/introduction) bevor Sie fortfahren.

In der ***Jobliste*** werden alle Aktivitäten, die im Rahmen der Funktionen des Connector NAV/BC ausgeführt werden, protokolliert.
Die ***Connector 365 Apps*** verwenden eine ähnliche Tabelle (***Connector 365 Aktivitäten***), um jegliche Aktivitäten festzuhalten.
Da beide Tabellen allerdings nicht identisch sind, wird ein Prozess benötigt, der die Daten der ***Jobliste*** in die ***Connector 365 Aktivitäten*** Liste überträgt.

Die ***Connector 365 Upgrade*** App stellt eine Funktion für die Datensynchronisierung bereit.

Bei Betätigung der Funktion des Daten-Transfers wird nach und nach jeder Eintrag der ***Jobliste*** in die ***Connector 365 Aktivitäten*** übertragen.
Dabei werden auch die Statusinformationen der einzelnen Einträge berücksichtigt. 

Sollte der Prozess z. B. durch Serverprobleme vorzeitig abgebrochen werden, kann der Vorgang beliebig wiederholt werden. Dabei wird der Prozess nicht gänzlich neu gestartet, sondern nach dem zuletzt erfolgreich übertragenen Datensatz weitergeführt. Auch bei mehrfachen unerwarteten Abbrüchen kann dieses Vorgehen so oft wiederholt werden, bis alle Datensätze erfolgreich übertragen wurden.

{{< notice info Hinweis >}}
Bei einer sehr großen Menge an zu transferierenden Daten kann das Upgrade unter Umständen eine lange Ausführungszeit beanspruchen.
Es wird daher empfohlen das Upgrade außerhalb der Geschäftszeiten zu planen, und dass für die Ausführung genügend zeitliche Ressourcen zur Verfügung stehen.
{{</ notice >}}

### Welche Daten werden beim Upgrade berücksichtigt?

Beim Upgrade werden grundsätzliche alle Feldinhalte übertragen, welche sowohl in der ***Aktivitätenliste*** als auch in der ***Connector NAV/BC Jobliste*** vorhanden sind.
Zudem werden weitere Tabellen berücksichtigt, welche in direkter Verbindung zur Jobliste stehen:
* <u>Statusrückmeldungen</u> (***Tabelle CON Feedback***):
    Zu jedem ***Joblisten***-Eintrag können beliebig viele Statusrückmeldungen zugeordnet werden. Im Zuge des Upgrades werden alle ***CON Feedback***-Einträge in die Tabelle ***BEL365 Feedback Entry*** übertragen. Auf diese Weise bleiben die Statusinformationen der ***Jobliste*** ('+', '-') vorhanden.
* <u>Dateianhänge</u> (***Tabelle CON File***):
    Neben Statusinformationen kann ein Eintrag in der ***Jobliste*** beliebig viele Anhänge enthalten. Auch diese werden im Laufe des Upgrades übertragen.
    Ziel für die Anhänge in der ***Connector 365***-Reihe ist die Tabelle ***BEL365 Activity Entry File***.

### Upgrade durchführen


{{< notice warning Wichtig>}}
Die ***Connector NAV/BC Jobliste*** ist mandantenunabhängig. Die ***Connector 365 Aktivitäten***-Tabelle ist jedoch mandantenspezifisch.
Das heißt bei der Übertragung der ***Jobliste*** wird auf den aktuellen Mandanten gefiltert. Wenn der Wunsch besteht, die komplette ***Jobliste*** zu übernehmen, und mehrere Mandanten vorhanden sind, so muss der nachfolgende Prozess einmal pro Mandant ausgeführt werden.
{{< /notice >}}

<br>

Über die Suchfunktion von Business Central können Sie die Connector 365 Einrichung aufrufen:
|![](/images/apps/Base/suche_connector_einr_de.png)|
|-|

Hier finden Sie im Menü "Aktionen"
|![](/images/apps/Upgrade%20App/de/connector_einrichtung_aktionen.png)|
|-|

den Button ***Jobliste übertragen***
|![](/images/apps/Upgrade%20App/de/button_transferiere_jobliste.png)|
|-|

Sobald der Vorgang abgeschlossen ist, erscheint eine entsprechende Meldung:

|![](/images/apps/Upgrade%20App/de/joblist_transfer_beendet.png)|
|-|

Um die Aktiviäten-Liste einzusehen, geben Sie ***Connector 365 Aktivitäten*** in die Suchleiste ein:

|![](/images/apps/Upgrade%20App/de/aktivitäten_suche.png)|
|-|