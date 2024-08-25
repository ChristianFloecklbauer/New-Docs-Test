---
title: "Report selection"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Setup

### Report selection

Using the search function, open the desired report selection - e.g. the one for sales. Now select the desired report. For our example we are going to use invoices, however, reports are supported for
- Sales
- Purchasing
- Service
- Reminder
- Inventory
- Production Order
- Bank Account

![](images/apps/Mail_Subject_Plus/en-us/app_report_selection.png)

In the report selection you will find the field **"Email subjects"**, which shows how many individual formulations have already been created. Clicking the field will take you to the **Email Subject** editing page.
Here you can now define an individual subject for each language code. On the one hand there is the possibility to formulate a static subject here, which will be inserted in all messages in the same way.

![](images/apps/Mail_Subject_Plus/en-us/dialog_email_subject.png)

On the other hand, there is the possibility to design the subject dynamically. By using placeholders it then adapts to the content of the message.

![](images/apps/Mail_Subject_Plus/en-us/dialog_email_subject_w_placeholder.png)

 You can define the placeholders by clicking the **[...]** button on the right margin in the **Subject text** field. This will take you to the **Email Subject Placeholders** page where you can set the definitions.

![](images/apps/Mail_Subject_Plus/en-us/app_email_subject_placeholder.png)


#### Define placeholder
On the page **"Email subject placeholder"** two fields are available to you:

**Placeholder** - Here you define how your placeholder should look like.
**Definition** - This field defines to which field your previously entered placeholder refers to.

**Creating a new placeholder**
First, enter the placeholder you want to use in the **Placeholder** field. We recommend using placeholders here which could not accidentally appear in the subject, for example, if you define the placeholder **Inv** for the invoice number and the subject contains the word **Invoice**, the **Inv** part of the word would be replaced in the subject. It is best to use a combination of special characters and numbers or adjust placeholders so that they do not accidentally appear in words.

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
How the subject then looks in use, you will find out in the next [step](en-us/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).

#### Priorities

 In the Report Selection pages, you can configure which reports you want to use and whether they should be used as email attachments or as email text.

 The Connector 365 Mail Subject Plus app preferentially uses entries defined for email attachments.
 In a constellation where different reports are set up, the subject lines of the respective attachments are used.

 |![](images/apps/Mail_Subject_Plus/en-us/report-selection-multiple-entries.png)|
 |-|

 In the above example, the settings for the **124** and **297** reports are taken into account for sending e-mails.