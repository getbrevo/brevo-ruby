# BrevoRuby::GetAllExternalFeedsFeeds

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the feed | 
**name** | **String** | Name of the feed | 
**url** | **String** | URL of the feed | 
**auth_type** | **String** | Auth type of the feed: * &#x60;basic&#x60; * &#x60;token&#x60; * &#x60;noAuth&#x60;  | 
**username** | **String** | Username for authType &#x60;basic&#x60; | [optional] 
**password** | **String** | Password for authType &#x60;basic&#x60; | [optional] 
**token** | **String** | Token for authType &#x60;token&#x60; | [optional] 
**headers** | [**Array&lt;GetExternalFeedByUUIDHeaders&gt;**](GetExternalFeedByUUIDHeaders.md) | Custom headers for the feed | 
**max_retries** | **Integer** | Maximum number of retries on the feed url | 
**cache** | **BOOLEAN** | Toggle caching of feed url response | 
**created_at** | **DateTime** | Datetime on which the feed was created | 
**modified_at** | **DateTime** | Datetime on which the feed was modified | 


