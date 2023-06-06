# BrevoRuby::GetWhatsappEventReportEvents

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_number** | **String** | WhatsApp Number with country code. Example, 85264318721 | 
**date** | **String** | UTC date-time on which the event has been generated | 
**message_id** | **String** | Message ID which generated the event | 
**event** | **String** | Event which occurred | 
**reason** | **String** | Reason for the event (will be there in case of &#x60;error&#x60; and &#x60;soft-bounce&#x60; events) | [optional] 
**body** | **String** | Text of the reply (will be there only in case of &#x60;reply&#x60; event with text) | [optional] 
**media_url** | **String** | Url of the media reply (will be there only in case of &#x60;reply&#x60; event with media) | [optional] 
**sender_number** | **String** | WhatsApp Number with country code. Example, 85264318721 | 


