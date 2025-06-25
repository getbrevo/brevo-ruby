# Brevo::TierGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Tier group unique identifier | [optional] 
**name** | **String** | Tier group name | [optional] 
**tier_order** | **Array&lt;String&gt;** | Order of the tiers in the group in ascending order | [optional] 
**loyalty_program_id** | **String** | Associated loyalty program Id | [optional] 
**upgrade_strategy** | **String** | Select real_time to upgrade tier on real time balance updates. Select membership_anniversary to upgrade tier on subscription anniversary. Select tier_anniversary to upgrade tier on tier anniversary. | [optional] [default to &#39;real_time&#39;]
**downgrade_strategy** | **String** | Select real_time to downgrade tier on real time balance updates. Select membership_anniversary to downgrade tier on subscription anniversary. Select tier_anniversary to downgrade tier on tier anniversary. | [optional] [default to &#39;real_time&#39;]
**created_at** | **DateTime** | Timestamp when the tier group was created | [optional] 
**updated_at** | **DateTime** | Timestamp when the tier group was last updated | [optional] 


