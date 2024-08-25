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
You will receive the objects for the Connector 365 Base & Easy Batch App from us by mail. In order to be able to use the App, they must first be published and then installed.

#### Publishing of the Connector 365 Base & Easy Batch App
the publishing of the Connector Base & Easy Batch App is done via the **Business Central Administration Shell**. First transfer the files we sent to you to the server where your Business Central instance is running.

![](images/apps/adminshell.PNG)

Now start the **Business Central Administration Shell** to start the publishing process. Using the Administration Shell, first navigate to the location for the file using the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the appropriate folder, you can use the following command to first publish the base app

{{< notice info "Note" >}}
 _The order of publishing is important, please always publish the Connector 365 Base App first._
{{< /notice >}}
#

**Example:**

```Publish-NAVApp -ServerInstance YourBusinessCentralInstance -Path ".\BasisApp.app"```

Afterwards you should also perform the process for the actual Connector 365 Easy Batch app

**Example:**

```Publish-NAVApp -ServerInstance YourBusinessCentralInstance -Path ".\EasyBatch.app"```

Both apps should now be published in your system.

{{< notice info "Note" >}}
 _In versions up to BC 16 you still have to add the -SkipVerification parameter to the command, otherwise an error message will occur._
{{< /notice >}}
#

#### Installing the Connector 365 Base & Easy Batch App
In the extension management of your environment, you will now see the apps as published, but they are not yet installed.

##### Installing via the client
Open your Business Central environment, open the search function and look for **Extension Management**.

There you should find the two apps with the status not installed. By clicking on the 3 dots of the respective app, you can now install it in your environment via the item **Install**.

![](images/apps/appinstallen.PNG)

##### Installing via the administration shell
In case you want to install via the Administration Shell (this has the advantage that you can install on several tenants at once), you have to use the **Install-NAVApp** command. When doing so, you should specify the **Tenant ID**. In the following examples, we install the apps in two tenants.

{{< notice info "Note" >}}
 _The order of installation also plays a role, please always install the Connector 365 Base App first._
{{< /notice >}}
#

To install the Connector 365 Base app, use the following command::

**Example:**

```Install-NAVApp -ServerInstance YourBusinessCentralInstance -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

The Connector 365 Easy Batch app follows:

**Example:**

```Install-NAVApp -ServerInstance YourBusinessCentralInstance -Name "Connector 365 Easy Batch" -Tenant Tenant1, Tenant2```

{{< notice info "Note">}}
_For enabling the app to perform its tasks, it is important to ensure that the task scheduler is activated in the Business Central server configuration. Before Business Central 2022 release wave 2 (V21), this can be done graphically via the Business Central server administration tool. As of the mentioned version, this has to be done in the administration shell by using the command Set-NAVServerConfiguration with suitable parameters._
{{< /notice >}}
#

After the installation is done you can proceed by doing the [setup](/en-us/apps/easy-batch/first-steps/setup/).