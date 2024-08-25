---
title: "Document layouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup

### Document layouts
In addition to the report selection, you can also define a subject individually per customer/vendor - this setting will then overwrite the setting from the report selection, if available.

![](images/apps/subjectcustomeren.PNG)

First navigate to the desired customer or vendor. Once there, click **"Navigate"** -> **"Document layouts"** in the menu bar. Before you set up the subject, you must first set up the usage or report. Once this is done you can use the **"Email Subject"** field to set your desired subject.

![](images/apps/subjectdoclayouten.PNG)

For this there is on the one hand the option to formulate a static subject, which is inserted unchanged in all messages for the respective use.

![](images/apps/Mail_Subject_Plus/en-us/setup_doclayouts.png)

Another option is to formulate dynamic subjects that adapt to the content of each message by using placeholders.

![](images/apps/Mail_Subject_Plus/en-us/setup_doclayouts_w_placeholder.png)

You can define the placeholders by clicking the **[...]** button on the right margin in the **Email Subject** field.

#### Define placeholder
Now the window **"Email subject placeholder"** opens, where you have the possibility to define your placeholders. Two fields are available to you:

**Placeholder** - Here you define how your placeholder should look like.
**Definition** - This field defines to which field your previously entered placeholder refers to.

![](images/apps/subjectdocplaceen.PNG)

**Creating a new placeholder**
First, enter the placeholder you want to use in the **Placeholder** field. We recommend using placeholders here which could not accidentally appear in the subject, for example, if you define the placeholder **Inv** for the invoice number and the subject contains the word **Invoice**, the **Inv** part of the word would be replaced in the subject. It is best to use a combination of special characters and numbers or adjust placeholders so that they do not accidentally appear in words.

Now you have to define the field to which the placeholder refers. Here you have all the respective fields from the report you are currently in at your disposal.

Now you have to define the field to which the placeholder refers. To do this, click on the assist button of the **Definition** field. 
Now another window opens, in which all fields from the company information, as well as all fields from the header data of the underlying report are available to you. You can select a field assignment for each placeholder.

|![](images/apps/mail_subject_field_lookup.png)|
|-|

{{< notice info "Technical Note" >}}
To determine the table for the header data, the report metadata of the respective report is examined for its property: **FirstDataItemTableID**. 
The standard reports in Business Central store the underlying header for this respective first element (FirstDataItemTableId). Example: Report 1306 -> Sales Invoice Header. 
If customized reports have a different structure, i.e. a different table is in the first place, it will also be taken over into the table filter, whereby possibly useless fields will be displayed, or important fields could be missed.
For such cases there is the possibility to set the correct target table via an event subscriber depending on the report id.
More about this can be found at [Events](/en-us/apps/mail-subject-plus/working-with-mail-subject-plus/events).
{{< /notice >}}

<br>
<br>

Repeat this process for all fields/placeholders you want to use in your subject.

![](images/apps/subjectdocplacefillen.PNG)

#### Example of a subject with placeholders
Now that you have defined your placeholders, you can define the subject with placeholders. Close the placeholder setup and click again in the **"Email Subject"** field. For our example, we have defined the following placeholders for an invoice.

- **%1** - the invoice number
- **%2** - The recipient name
- **%3** - The due date

With this we could now for example, build this subject: Our invoice **%1** for **%2** - Due **%3**

![](images/apps/subjectdoclayoutdoneen.PNG)

How the subject then looks in use, you will find out in the next [step](en-us/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).