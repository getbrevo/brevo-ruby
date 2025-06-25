# Brevo::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID of the order. | 
**created_at** | **String** | Event occurrence UTC date-time (YYYY-MM-DDTHH:mm:ssZ), when order is actually created. | 
**updated_at** | **String** | Event updated UTC date-time (YYYY-MM-DDTHH:mm:ssZ), when the status of the order is actually changed/updated. | 
**status** | **String** | State of the order. | 
**amount** | **Float** | Total amount of the order, including all shipping expenses, tax and the price of items. | 
**store_id** | **String** | ID of store where the order is placed | [optional] 
**identifiers** | [**OrderIdentifiers**](OrderIdentifiers.md) |  | [optional] 
**products** | [**Array&lt;OrderProducts&gt;**](OrderProducts.md) |  | 
**billing** | [**OrderBilling**](OrderBilling.md) |  | [optional] 
**coupons** | **Array&lt;String&gt;** | Coupons applied to the order. Stored case insensitive. | [optional] 
**meta_info** | **Hash&lt;String, Object&gt;** | Meta data of order to store additional detal such as custom message, customer type, source. | [optional] 


