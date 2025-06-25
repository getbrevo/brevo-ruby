# Brevo::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The transaction amount. | [optional] 
**balance_definition_id** | **String** | Unique identifier (UUID) of the associated balance definition. | [optional] 
**cancelled_at** | **String** | Timestamp when the transaction was canceled (nullable). | [optional] 
**completed_at** | **String** | Timestamp when the transaction was completed (nullable). | [optional] 
**contact_id** | **Integer** | Unique identifier of the contact associated with the transaction. | [optional] 
**created_at** | **String** | Timestamp when the transaction was created. | [optional] 
**event_time** | **String** | Optional timestamp indicating when the transaction event occurred. | [optional] 
**expiration_date** | **String** | Expiry date of the transaction (nullable). | [optional] 
**id** | **String** | Unique identifier (UUID) of the transaction. | [optional] 
**loyalty_program_id** | **String** | Unique identifier (UUID) of the associated loyalty program. | [optional] 
**meta** | **Object** | Optional metadata associated with the transaction. | [optional] 
**reject_reason** | **String** | Reason for rejection if the transaction was declined (nullable). | [optional] 
**rejected_at** | **String** | Timestamp when the transaction was rejected (nullable). | [optional] 
**status** | **String** | The current status of the transaction (e.g., pending, completed, rejected). | [optional] 
**updated_at** | **String** | Timestamp when the transaction was last updated. | [optional] 


