# Brevo::GetCouponCollection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the collection. | 
**name** | **String** | The name of the collection. | 
**default_coupon** | **String** | The default coupon of the collection. | 
**created_at** | **DateTime** | Datetime on which the collection was created. | 
**total_coupons** | **Integer** | Total number of coupons in the collection. | 
**remaining_coupons** | **Integer** | Number of coupons that have not been sent yet. | 
**expiration_date** | **DateTime** | Expiration date for the coupon collection in RFC3339 format. | [optional] 
**remaining_days_alert** | **Integer** | If present, an email notification is going to be sent the defined amount of days before the expiration date. | [optional] 
**remaining_coupons_alert** | **Integer** | If present, an email notification is going to be sent when the total number of available coupons falls below the defined threshold. | [optional] 


