# Brevo::TransactionHistory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The transaction amount. | [optional] 
**balance_expiration_date** | **String** | Expiration date of the balance associated with this transaction. | [optional] 
**cancelled_at** | **String** | Timestamp when the transaction was canceled, if applicable. | [optional] 
**completed_at** | **String** | Timestamp when the transaction was successfully completed. | [optional] 
**created_at** | **String** | Timestamp when the transaction was initiated. | [optional] 
**id** | **String** | Unique identifier of the transaction. | [optional] 
**meta** | **Object** | Optional metadata associated with the transaction. | [optional] 
**reject_reason** | **String** | Reason for rejection, if the transaction was declined. | [optional] 
**rejected_at** | **String** | Timestamp when the transaction was rejected. | [optional] 
**status** | **String** | Current status of the transaction (e.g., pending, completed, rejected). | [optional] 


