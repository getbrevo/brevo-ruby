# Brevo::BalanceLimit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance_definition_id** | **String** | balance definition ID | [optional] 
**constraint_type** | **String** | Defines the type of constraint (e.g., transaction-based or amount-based). | [optional] 
**created_at** | **String** | Timestamp of when the balance limit was created. | 
**duration_unit** | **String** | Time unit for the balance limit (day, week, month, year). | [optional] 
**duration_value** | **Integer** | Number of time units the balance limit applies to. | [optional] 
**id** | **String** | Unique identifier for the balance limit. | [optional] 
**sliding_schedule** | **BOOLEAN** | Indicates if the limit resets periodically based on a sliding schedule. | [optional] 
**transaction_type** | **String** | Specifies whether the limit applies to credit or debit transactions. | [optional] 
**updated_at** | **String** | Timestamp of the last update to the balance limit. | 
**value** | **Integer** | The maximum allowed value for the defined constraint. | [optional] 


