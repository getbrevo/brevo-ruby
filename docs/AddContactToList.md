# Brevo::AddContactToList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **Array&lt;String&gt;** | Mandatory if IDs, EXT_ID attributes are not passed, ignored otherwise. Emails to add to a list. You can pass a maximum of 150 emails for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] 
**ids** | **Array&lt;Integer&gt;** | Mandatory if Emails, EXT_ID attributes are not passed, ignored otherwise. Emails to add to a list. You can pass a maximum of 150 ids for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] 
**ext_ids** | **Array&lt;String&gt;** | Mandatory if Emails, IDs are not passed, ignored otherwise. Emails to add to a list. You can pass a maximum of 150 extIds for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] 


