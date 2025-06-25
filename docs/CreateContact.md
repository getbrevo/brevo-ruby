# Brevo::CreateContact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the user. **Mandatory if \&quot;ext_id\&quot;  &amp; \&quot;SMS\&quot; field is not passed.** | [optional] 
**ext_id** | **String** | Pass your own Id to create a contact. | [optional] 
**attributes** | **Hash&lt;String, Object&gt;** | Pass the set of attributes and their values. These attributes must be present in your Brevo account. For eg. {&#39;FNAME&#39;:&#39;Elly&#39;, &#39;LNAME&#39;:&#39;Roger&#39;, &#39;COUNTRIES&#39;:[&#39;India&#39;,&#39;China&#39;]} | [optional] 
**email_blacklisted** | **BOOLEAN** | Set this field to blacklist the contact for emails (emailBlacklisted &#x3D; true) | [optional] 
**sms_blacklisted** | **BOOLEAN** | Set this field to blacklist the contact for SMS (smsBlacklisted &#x3D; true) | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] 
**update_enabled** | **BOOLEAN** | Facilitate to update the existing contact in the same request (updateEnabled &#x3D; true) | [optional] [default to false]
**smtp_blacklist_sender** | **Array&lt;String&gt;** | transactional email forbidden sender for contact. Use only for email Contact ( only available if updateEnabled &#x3D; true ) | [optional] 


