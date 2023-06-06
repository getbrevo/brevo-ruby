# BrevoRuby::UpdateExternalFeed

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the feed | [optional] 
**url** | **String** | URL of the feed | [optional] 
**auth_type** | **String** | Auth type of the feed:   * &#x60;basic&#x60;   * &#x60;token&#x60;   * &#x60;noAuth&#x60;  | [optional] 
**username** | **String** | Username for authType &#x60;basic&#x60; | [optional] 
**password** | **String** | Password for authType &#x60;basic&#x60; | [optional] 
**token** | **String** | Token for authType &#x60;token&#x60; | [optional] 
**headers** | [**Array&lt;GetExternalFeedByUUIDHeaders&gt;**](GetExternalFeedByUUIDHeaders.md) | Custom headers for the feed | [optional] 
**max_retries** | **Integer** | Maximum number of retries on the feed url | [optional] 
**cache** | **BOOLEAN** | Toggle caching of feed url response | [optional] [default to false]


