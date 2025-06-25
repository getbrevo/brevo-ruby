# Brevo::CreateOrderPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Order amount (must be non-zero). | 
**balance_definition_id** | **String** | Unique identifier (UUID) of the associated balance definition. | 
**contact_id** | **Integer** | Unique identifier of the contact placing the order (must be ≥ 1). | 
**due_at** | **String** | RFC3339 timestamp specifying when the order is due. | 
**expires_at** | **String** | Optional RFC3339 timestamp defining order expiration. | [optional] 
**meta** | **Object** | Optional metadata associated with the order. | [optional] 
**source** | **String** | Specifies the origin of the order (&#x60;engine&#x60; or &#x60;user&#x60;). | 


