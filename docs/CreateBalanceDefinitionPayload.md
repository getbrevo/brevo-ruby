# Brevo::CreateBalanceDefinitionPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance_availability_duration_modifier** | **String** | Defines when the balance expires within the selected duration. | [optional] 
**balance_availability_duration_unit** | **String** | Unit of time for balance validity. | [optional] 
**balance_availability_duration_value** | **Integer** | Number of time units before the balance expires. | [optional] 
**balance_expiration_date** | **Date** | Fixed expiration date (&#x60;dd/mm&#x60; format) as an alternative to duration-based expiry. | [optional] 
**balance_option_amount_overtaking_strategy** | **String** | Defines whether partial credit is allowed when reaching max balance. | [optional] 
**balance_option_credit_rounding** | **String** | Defines rounding strategy for credit transactions. | [optional] 
**balance_option_debit_rounding** | **String** | Defines rounding strategy for debit transactions. | [optional] 
**description** | **String** | Short description of the balance definition. | [optional] 
**image_ref** | **String** | URL of an optional image reference. | [optional] 
**max_amount** | **Float** | Maximum allowable balance amount. | [optional] 
**max_credit_amount_limit** | **Float** | Maximum credit allowed per operation. | [optional] 
**max_debit_amount_limit** | **Float** | Maximum debit allowed per operation. | [optional] 
**meta** | **Object** | Additional metadata for the balance definition. | [optional] 
**min_amount** | **Float** | Minimum allowable balance amount. | [optional] 
**name** | **String** | Name of the balance definition. | 
**unit** | **String** | Unit of balance measurement. | 


