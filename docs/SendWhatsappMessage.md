# Brevo::SendWhatsappMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** | ID of the template to send | [optional] 
**text** | **String** | Text to be sent as message body (will be overridden if templateId is passed in the same request) | [optional] 
**sender_number** | **String** | WhatsApp Number with country code. Example, 85264318721 | 
**params** | **Object** | Pass the set of attributes to customize the template. For example, {\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}. | [optional] 
**contact_numbers** | **Array&lt;String&gt;** | List of phone numbers of the contacts | 


