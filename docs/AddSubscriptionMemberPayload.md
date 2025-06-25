# Brevo::AddSubscriptionMemberPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_id** | **Integer** | Required if LoyaltySubscriptionId is not provided, must be greater than 0 | [optional] 
**loyalty_subscription_id** | **String** | Required if ContactId is not provided, max length 64 | [optional] 
**member_contact_ids** | **Array&lt;Integer&gt;** | Required, each item must be greater than or equal to 1 | 


