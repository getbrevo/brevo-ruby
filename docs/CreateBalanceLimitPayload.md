# Brevo::CreateBalanceLimitPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**constraint_type** | **String** | Defines whether the limit applies to transaction count or amount. | 
**duration_unit** | **String** | Unit of time for which the limit is applicable. | 
**duration_value** | **Integer** | Number of time units for the balance limit. | 
**sliding_schedule** | **BOOLEAN** | Determines if the limit resets on a rolling schedule. | [optional] 
**transaction_type** | **String** | Specifies whether the limit applies to credit or debit transactions. | 
**value** | **Integer** | Maximum allowed value for the specified constraint type. | 


