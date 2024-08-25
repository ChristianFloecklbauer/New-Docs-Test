---
title: "OnPrem"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Installation

### OnPrem
Sie erhalten von uns die Objekte für die Connector 365 Base & Addressee Control App per E-Mail. Für die Nutzung der App, müssen Sie diese Objekte zuerst veröffentlichen und anschließend installieren.

#### Veröffentlichen der Connector 365 Base & Addressee Control App
Das Veröffentlichen der Connector 365 Base & Addressee Control App erfolgt via der **Business Central Administration Shell**. Transferieren Sie zunächst die von uns an Sie gesendeten Dateien auf den Server auf dem Ihre Business Central Instanz läuft.

![](images/apps/adminshell.PNG)

Starten Sie nun die **Business Central Administration Shell** um den Prozess der Veröffentlichung zu starten. Navigieren Sie mit der Administration Shell zunächst an den Speicherort für die Datei mit dem **cd** Befehl.

**Beispiel:**

```cd C:\Apps```

Nun, da Sie sich im entsprechenden Ordner befinden, können Sie mit Hilfe von folgendem Befehl zunächst die Base App veröffentlichen.

{{< notice info "Hinweis" >}}
 _Die Reihenfolge der Veröffentlichung ist wichtig, bitte veröffentlichen Sie immer zuerst die Connector 365 Base App._
{{< /notice >}}
#

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app"```

Anschließend führen Sie diesen Prozess auch noch für die eigentliche Connector 365 Addressee Control App durch.

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\AddresseeControl.app"```

Beide Apps sollten nun im System veröffentlicht sein.

{{< notice info "Hinweis" >}}
 _In Versionen bis BC 16 müssen Sie dem Befehl noch den parameter -SkipVerification hinzufügen, da es sonst zu einer Fehlermeldung kommt._
{{< /notice >}}
#

#### Installieren der Connector 365 Base & Addressee Control App

In der Erweiterungsverwaltung Ihrer Umgebung werden Ihnen die Apps nun als veröffentlicht angezeigt, jedoch sind diese noch nicht installiert.

![](images/apps/ctipublishde.PNG)

##### Installieren via des Clients
Öffnen Sie die Suchfunktion in Ihrer Business Central Umgebung und suchen Sie nach der **Erweiterungsverwaltung**.

Dort sollten Sie nun die beiden Apps vorfinden mit dem Status <i>nicht installiert</i>. Mit einem Klick auf die 3 Punkte der jeweiligen App, können Sie diese nun über den Punkt **Installieren** in Ihrer Umgebung installieren.

![](images/apps/appinstallde.PNG)

##### Installieren via der Administration Shell
Für den Fall, dass Sie die Installation über die Administration Shell vornehmen wollen (dies hat den Vorteil, dass man gleich auf mehreren Tenants installieren kann), müssen Sie den **Install-NAVApp** Befehl nutzen. Dabei sollten Sie die **Tenant ID** spezifizieren. 
In den folgenden Beispielen zeigen wir Ihnen die Installation der Apps in zwei Tenants.

{{< notice info "Hinweis" >}}
 _Auch die Reihenfolge bei der Installation spielt eine Rolle, installieren Sie bitte zuerst immer die Connector 365 Base App._
{{< /notice >}}
#

Für die Installation der Connector 365 Base App nutzen Sie den folgenden Befehl:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

Es folgt noch die Connector 365 Addressee Control App:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Addressee Control" -Tenant Tenant1, Tenant2```

Sie können nun mit der [Einrichtung](/de-de/apps/addressee-control/first-steps/setup/) starten.



