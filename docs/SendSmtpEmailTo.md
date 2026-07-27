# Brevo::SendSmtpEmailTo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the recipient | 
**name** | **String** | Name of the recipient. Maximum allowed characters are 70. | [optional] 
**contact_pixel_tracking_consent** | **BOOLEAN** | Consent of the recipient for open (pixel) tracking, resolved by the sender at send time. Considered only if the per-contact pixel tracking consent feature is enabled for your account. Pass `true` if this recipient has consented to open tracking, in which case the open pixel identifies the recipient. Pass `false` to anonymise the open event (counted in aggregate statistics only). If it is not passed, the recipient is treated as unknown consent status and the email is still sent (the open is anonymised unless your account tracks unknown-consent contacts). A value other than `true`/`false` is rejected. Ignored when the feature is not enabled for your account. | [optional] 


