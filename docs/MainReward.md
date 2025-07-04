# Brevo::MainReward

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attribution_per_consumer** | **Integer** | Maximum number of times a consumer can be attributed this reward | [optional] 
**balance_definition_id** | **String** | Unique identifier for the balance definition | [optional] 
**code** | **String** | Unique code for the reward | [optional] 
**code_count** | **Integer** | Total number of codes generated | [optional] 
**code_generator_id** | **String** | Unique identifier for the code generator | [optional] 
**code_pool_id** | **String** | Unique identifier for the code pool | [optional] 
**config** | **String** | Configuration settings for the reward | [optional] 
**created_at** | **DateTime** | Timestamp when the reward was created | [optional] 
**disabled_at** | **DateTime** | Disabled date of the reward | [optional] 
**end_date** | **DateTime** | End date of the reward validity | [optional] 
**expiration_date** | **DateTime** | Expiration date of the reward | [optional] 
**expiration_modifier** | **String** | Select startOfPeriod to configure rewards expiry on start of day/week/month/year. Select endOfPeriod to configure reward expiry on end of day/week/month/year, else select noModification | [optional] [default to &#39;noModification&#39;]
**expiration_unit** | **String** | Unit of time for the rewards&#39;s availability (e.g., day/week/month/year). | [optional] 
**expiration_value** | **Integer** | Number of days/weeks/month/year for reward expiry | [optional] 
**generator** | [**MainRewardGenerator**](MainRewardGenerator.md) |  | [optional] 
**id** | **String** | Unique identifier for the reward | [optional] 
**limits** | [**Array&lt;MainLimit&gt;**](MainLimit.md) | Attribution / Redeem Limits for the reward | [optional] 
**loyalty_program_id** | **String** | Id of the loyalty program to which the current reward belongs to | [optional] 
**meta** | **Hash&lt;String, Object&gt;** | Additional data for reward definition | [optional] 
**name** | **String** | Name of the reward | [optional] 
**products** | [**Array&lt;MainProduct&gt;**](MainProduct.md) | Selected products for reward definition | [optional] 
**public_description** | **String** | Public description for the reward | [optional] 
**public_image** | **String** | Public Image for the reward | [optional] 
**public_name** | **String** | Public name for the reward | [optional] 
**redeem_per_consumer** | **Integer** | Defines the redeem limit for the consumer | [optional] 
**redeem_rules** | **Array&lt;String&gt;** | Rules defined to redeem a reward | [optional] 
**reward_configs** | [**MainRewardGenerator**](MainRewardGenerator.md) |  | [optional] 
**rule** | [**MainRewardRule**](MainRewardRule.md) |  | [optional] 
**start_date** | **DateTime** | Start date of attribution of the reward | [optional] 
**subtract_balance_definition_id** | **String** | Id of the selected balance while redeeming / attributing a reward | [optional] 
**subtract_balance_strategy** | **String** | Strategy of the Balance while redeeming / attributing a reward | [optional] 
**subtract_balance_value** | **Integer** | Amount of balance to be selected while redeeming / attributing a reward | [optional] 
**subtract_total_balance** | **BOOLEAN** | Value to indicate to subtract full balance or not | [optional] 
**total_attribution** | **Integer** | Defines the limit to which a consumer can attribute a reward | [optional] 
**total_redeem** | **Integer** | Defines the limit to which a consumer can redeem a reward | [optional] 
**trigger_id** | **String** | Id of the Rule to be updated for that reward | [optional] 
**unit** | **String** | Selected unit of the balance | [optional] 
**updated_at** | **String** | Timestamp for when this reward was last updated. | [optional] 
**value** | **Float** | Value of metric in selected config for reward definition | [optional] 
**value_type** | **String** | Type of config selected for reward definition | [optional] 


