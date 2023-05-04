# BrevoApiV3Sdk::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID of the order. | 
**created_at** | **String** | Event occurrence UTC date-time (YYYY-MM-DDTHH:mm:ssZ), when order is actually created. | 
**updated_at** | **String** | Event updated UTC date-time (YYYY-MM-DDTHH:mm:ssZ), when the status of the order is actually changed/updated. | 
**status** | **String** | State of the order. | 
**amount** | **Float** | Total amount of the order, including all shipping expenses, tax and the price of items. | 
**products** | [**Array&lt;OrderProducts&gt;**](OrderProducts.md) |  | 
**email** | **String** | Email of the contact, Mandatory if \&quot;phone\&quot; field is not passed in \&quot;billing\&quot; parameter. | [optional] 
**billing** | [**OrderBilling**](OrderBilling.md) |  | [optional] 
**coupons** | **Array&lt;String&gt;** | Coupons applied to the order. Stored case insensitive. | [optional] 


