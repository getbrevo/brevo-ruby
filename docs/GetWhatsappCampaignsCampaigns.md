# BrevoRuby::GetWhatsappCampaignsCampaigns

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the WhatsApp Campaign | 
**campaign_name** | **String** | Name of the WhatsApp Campaign | 
**template_id** | **String** | Id of the WhatsApp template | 
**campaign_status** | **String** | Status of the WhatsApp Campaign | 
**scheduled_at** | **String** | UTC date-time on which WhatsApp campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format | 
**error_reason** | **String** | Error reason in the campaign creation | [optional] 
**invalidated_contacts** | **Integer** | Count of invalidated contacts | [optional] 
**read_percentage** | **Float** | Read percentage of the the WhatsApp campaign created | [optional] 
**stats** | [**WhatsappCampStats**](WhatsappCampStats.md) |  | [optional] 
**created_at** | **String** | Creation UTC date-time of the WhatsApp campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**modified_at** | **String** | UTC date-time of last modification of the whatsapp template (YYYY-MM-DDTHH:mm:ss.SSSZ) | 


