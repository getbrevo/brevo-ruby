# Brevo::RequestContactExport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_attributes** | **Array&lt;String&gt;** | List of all the attributes that you want to export. These attributes must be present in your contact database. It is required if exportMandatoryAttributes is set false. For example, [&#39;fname&#39;, &#39;lname&#39;, &#39;email&#39;]. | [optional] 
**custom_contact_filter** | [**RequestContactExportCustomContactFilter**](RequestContactExportCustomContactFilter.md) |  | 
**notify_url** | **String** | Webhook that will be called once the export process is finished. For reference, https://help.brevo.com/hc/en-us/articles/360007666479 | [optional] 
**disable_notification** | **BOOLEAN** | To avoid generating the email notification upon contact export, pass **true** | [optional] [default to false]
**export_mandatory_attributes** | **BOOLEAN** | To export mandatory attributes like EMAIL, ADDED_TIME, MODIFIED_TIME | [optional] [default to true]
**export_subscription_status** | **Array&lt;String&gt;** | Export subscription status of contacts for email &amp; sms marketting. Pass email_marketing to obtain the marketing email subscription status &amp; sms_marketing to retrieve the marketing SMS status of the contact. | [optional] 
**export_metadata** | **Array&lt;String&gt;** | Export metadata of contacts such as _listIds, ADDED_TIME, MODIFIED_TIME. | [optional] 


