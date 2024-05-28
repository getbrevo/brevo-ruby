# Brevo::GetWebhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | URL of the webhook | 
**id** | **Integer** | ID of the webhook | 
**description** | **String** | Description of the webhook | 
**events** | **Array&lt;String&gt;** |  | 
**type** | **String** | Type of webhook (marketing or transactional) | 
**created_at** | **String** | Creation UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**modified_at** | **String** | Last modification UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**batched** | **BOOLEAN** | To send batched webhooks | [optional] 
**auth** | [**GetWebhookAuth**](GetWebhookAuth.md) |  | [optional] 
**headers** | [**Array&lt;GetWebhookHeaders&gt;**](GetWebhookHeaders.md) | Custom headers to be send with webhooks | [optional] 


