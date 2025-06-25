# Brevo::MainOrderPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Total amount of the order | [optional] 
**billing** | [**MainOrderPayloadBilling**](MainOrderPayloadBilling.md) |  | [optional] 
**contact_id** | **Integer** | Unique identifier for the contact | [optional] 
**coupons** | **Array&lt;String&gt;** | List of coupon codes applied to the order | [optional] 
**created_at** | **DateTime** | Timestamp when the order was created | [optional] 
**email** | **String** | Email address associated with the order | [optional] 
**id** | **String** | Unique identifier for the order | [optional] 
**identifiers** | [**MainOrderPayloadIdentifiers**](MainOrderPayloadIdentifiers.md) |  | [optional] 
**products** | [**Array&lt;MainProductPayload&gt;**](MainProductPayload.md) | List of products in the order | [optional] 
**status** | **String** | Current status of the order | [optional] 
**store_id** | **String** | Identifier for the store where the order was placed | [optional] 
**updated_at** | **DateTime** | Timestamp when the order was last updated | [optional] 


