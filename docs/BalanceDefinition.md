# Brevo::BalanceDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance_availability_duration_modifier** | **String** | startOfPeriod depicts the balancy expiry on start of day/week/month/year. endOfPeriod depicts the balancy expiry on end of day/week/month/year | [optional] 
**balance_availability_duration_unit** | **String** | Unit of time for the balance&#39;s availability (e.g., day/week/month/year). | [optional] 
**balance_availability_duration_value** | **Integer** | Number of days/weeks/month/year for balance expiry | [optional] 
**balance_expiration_date** | **DateTime** | Date when the balance expires and can no longer be used, in dd/mm format. The balance will be expired when this date appears next in the calendar and only one of balanceExpirationDate or balance availability fields can be used. | [optional] 
**balance_option_amount_overtaking_strategy** | **String** | Partial enables partial credit of balance if maximum balance limit is reaching. Strict enables rejection of transaction if it will breach the max credit amount limit. | [optional] 
**balance_option_credit_rounding** | **String** | Rounding strategy for credit transactions. | [optional] 
**balance_option_debit_rounding** | **String** | Rounding strategy for debit transactions. | [optional] 
**created_at** | **DateTime** | Timestamp of balance definition creation. | [optional] 
**deleted_at** | **String** | Timestamp of balance definition deletion (nullable). | [optional] 
**description** | **String** | Short description of the balance definition. | [optional] 
**id** | **String** | Unique identifier for the balance definition. | [optional] 
**image_ref** | **String** | Optional image reference URL. | [optional] 
**max_amount** | **Float** | Maximum allowable balance. | [optional] 
**max_credit_amount_limit** | **Float** | Max credit allowed per operation. | [optional] 
**max_debit_amount_limit** | **Float** | Max debit allowed per operation. | [optional] 
**meta** | **Hash&lt;String, Object&gt;** | Additional metadata for the balance definition. | [optional] 
**min_amount** | **Float** | Minimum allowable balance. | [optional] 
**name** | **String** | Name of the balance definition. | [optional] 
**unit** | **String** | Unit of balance (e.g., points, currency). | [optional] 
**updated_at** | **String** | Timestamp of the last update. | [optional] 


