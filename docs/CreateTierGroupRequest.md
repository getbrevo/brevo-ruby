# Brevo::CreateTierGroupRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the tier group | 
**upgrade_strategy** | **String** | Select real_time to upgrade tier on real time balance updates. Select membership_anniversary to upgrade tier on subscription anniversary. Select tier_anniversary to upgrade tier on tier anniversary. | [optional] [default to &#39;real_time&#39;]
**downgrade_strategy** | **String** | Select real_time to downgrade tier on real time balance updates. Select membership_anniversary to downgrade tier on subscription anniversary. Select tier_anniversary to downgrade tier on tier anniversary. | [optional] [default to &#39;real_time&#39;]
**tier_order** | **Array&lt;String&gt;** | Order of the tiers in the group in ascending order | [optional] 


