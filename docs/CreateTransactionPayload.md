# Brevo::CreateTransactionPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**loyalty_subscription_id** | **String** | Unique identifier for the loyalty subscription (required unless &#x60;contactId&#x60; is provided). | [optional] 
**amount** | **Float** | Transaction amount (must be provided). | 
**auto_complete** | **BOOLEAN** | Whether the transaction should be automatically completed. | [optional] 
**balance_definition_id** | **String** | Unique identifier (UUID) of the associated balance definition. | 
**balance_expiry_in_minutes** | **Integer** | Optional expiry time for the balance in minutes (must be greater than 0 if provided). | [optional] 
**contact_id** | **Integer** | Unique identifier of the contact involved in the transaction (required unless &#x60;LoyaltySubscriptionId&#x60; is provided). | [optional] 
**event_time** | **String** | Optional timestamp specifying when the transaction occurred. | [optional] 
**meta** | **Object** | Optional metadata associated with the transaction. | [optional] 
**ttl** | **Integer** | Optional time-to-live for the transaction (must be greater than 0 if provided). | [optional] 


