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
Sie erhalten von uns die Objekte für die Connector 365 Base & Easy Batch App per Mail, damit Sie die App nutzen können, müssen diese zunächst veröffentlicht und anschließend installiert werden.

#### Veröffentlichen der Connector 365 Base & Easy Batch App
Das veröffentlichen der Connector 365 Base & Easy Batch App erfolgt via der **Business Central Administration Shell**. Transferieren Sie zunächst die von uns an Sie gesendete Dateien auf dem Server auf dem Ihre Business Central Instanz läuft.

![](images/apps/adminshell.PNG)

Starten Sie nun die **Business Central Administration Shell** um den Prozess der Veröffentlichung zu starten. Navigieren Sie mit der Administration Shell zunächst an den Speicherort für die Datei mit dem **cd** Befehl.

**Beispiel:**

```cd C:\Apps```

Nun, da Sie sich im entsprechenden Ordner befinden, können Sie mit Hilfe von folgendem Befehl zunächst die Basis App veröffentlichen

{{< notice info "Hinweis" >}}
 _Die Reihenfolge der Veröffentlichung ist wichtig, bitte veröffentlichen Sie immer zuerst die Connector 365 Base App._
{{< /notice >}}
#

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app"```

Anschließend sollten Sie den Prozess auch noch für die eigentliche Connector 365 Easy Batch App durchführen

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\EasyBatch.app"```

Beide Apps sollten nun im System veröffentlicht sein.

{{< notice info "Hinweis" >}}
 _In Versionen bis BC 16 müssen Sie dem Befehl noch den Parameter -SkipVerification hinzufügen, da es sonst zu einer Fehlermeldung kommt._
{{< /notice >}}
#

#### Installieren der Connector 365 Base & Easy Batch App
In der Erweiterungsverwaltung Ihrer Umgebung werden Sie Ihnne nun die Apps als veröffentlicht angezeigt, jedoch sind diese noch nicht installiert.

##### Installation über den Web-Client
Öffnen Sie Ihre Business Central Umgebung, öffnen Sie die Suchfunktion und suchen Sie nach der **Erweiterungsverwaltung**.

![](images/apps/appinstallde.PNG)

Dort sollten Sie nun die beiden Apps vorfinden mit dem Status nicht installiert. Mit einem Klick auf die 3 Punkte der jeweiligen App, können Sie diese nun über den Punkt **Installieren** in Ihrer Umgebung installieren.

##### Installieren via der Administration Shell
Für den Fall, dass Sie die Installation über die Administration Shell vornehmen wollen (dies hat den Vorteil, dass man gleich auf mehreren Tenants installieren kann), müssen Sie den **Install-NAVApp** Befehl nutzen. Dabei sollten Sie die **Tenant ID** spezifizieren. In den folgenden Beispielen installieren wir die Apps in zwei Tenants.

{{< notice info "Hinweis" >}}
 _Auch die Reihenfolge bei der Installation spielt eine Rolle, installieren Sie bitte zuerst immer die Connector 365 Base App_
{{< /notice >}}
#

Für die Installation der Connector 365 Base App nutzen Sie den folgenden Befehl:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

Es folgt noch die Connector 365 Easy Batch App:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Easy Batch" -Tenant Tenant1, Tenant2```

{{< notice info "Hinweis">}}
_Damit die App ihre Aufgaben erfüllen kann, ist darauf zu achten, dass in der Konfiguration des Business Central Servers der Task Scheduler aktiviert ist. Vor Business Central 2022 release wave 2 (V21) kann dies grafisch über das Business Central Server Administration Tool erfolgen. Ab der genannten Version ist hierfür das Kommando Set-NAVServerConfiguration mit entsprechenden Parametern in der Administration Shell zu nutzen._
{{< /notice >}}
#

Nach der Installation können Sie mit der [Einrichtung](/de-de/apps/easy-batch/first-steps/setup/) starten.
