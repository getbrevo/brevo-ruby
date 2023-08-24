# Brevo::UpdateWhatsAppCampaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaign_name** | **String** | Name of the campaign | [optional] 
**campaign_status** | **String** | Status of the campaign | [optional] [default to &#39;scheduled&#39;]
**reschedule_for** | **String** | Reschedule the sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) of campaign. **Prefer to pass your timezone in date-time format for accurate result.For example: **2017-06-01T12:30:00+02:00** Use this field to update the scheduledAt of any existing draft or scheduled WhatsApp campaign.  | [optional] 
**recipients** | [**CreateWhatsAppCampaignRecipients**](CreateWhatsAppCampaignRecipients.md) |  | [optional] 


