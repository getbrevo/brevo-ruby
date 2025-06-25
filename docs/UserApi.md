# Brevo::UserApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**edit_user_permission**](UserApi.md#edit_user_permission) | **POST** /organization/user/update/permissions | Update permission for a user
[**get_invited_users_list**](UserApi.md#get_invited_users_list) | **GET** /organization/invited/users | Get the list of all your users
[**get_user_permission**](UserApi.md#get_user_permission) | **GET** /organization/user/{email}/permissions | Check user permission
[**inviteuser**](UserApi.md#inviteuser) | **POST** /organization/user/invitation/send | Send invitation to user
[**put_revoke_user_permission**](UserApi.md#put_revoke_user_permission) | **PUT** /organization/user/invitation/revoke/{email} | Revoke user permission
[**putresendcancelinvitation**](UserApi.md#putresendcancelinvitation) | **PUT** /organization/user/invitation/{action}/{email} | Resend / Cancel invitation


# **edit_user_permission**
> Inviteuser edit_user_permission(update_permissions)

Update permission for a user

`Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"create_edit_deals\"   - \"delete_deals\"   - \"manage_others_deals_tasks\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\" - `companies`:   - \"manage_owned_companies\"   - \"manage_other_companies\"   - \"settings\"  **Note**: - The privileges array remains the same as in the send invitation; the user simply needs to provide the permissions that need to be updated. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

update_permissions = Brevo::Inviteuser.new # Inviteuser | Values to update permissions for an invited user


begin
  #Update permission for a user
  result = api_instance.edit_user_permission(update_permissions)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->edit_user_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_permissions** | [**Inviteuser**](Inviteuser.md)| Values to update permissions for an invited user | 

### Return type

[**Inviteuser**](Inviteuser.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invited_users_list**
> GetInvitedUsersList get_invited_users_list

Get the list of all your users

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

begin
  #Get the list of all your users
  result = api_instance.get_invited_users_list
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->get_invited_users_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetInvitedUsersList**](GetInvitedUsersList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_permission**
> GetUserPermission get_user_permission(email)

Check user permission

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

email = 'email_example' # String | Email of the invited user.


begin
  #Check user permission
  result = api_instance.get_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->get_user_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the invited user. | 

### Return type

[**GetUserPermission**](GetUserPermission.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inviteuser**
> Inviteuser inviteuser(send_invitation)

Send invitation to user

`Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"create_edit_deals\"   - \"delete_deals\"   - \"manage_others_deals_tasks\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\" - `companies`:   - \"manage_owned_companies\"   - \"manage_other_companies\"   - \"settings\"  **Note**: - If `all_features_access: false` then only privileges are required otherwise if `true` then it's assumed that all permissions will be there for the invited user. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

send_invitation = Brevo::Inviteuser.new # Inviteuser | Values to create an invitation


begin
  #Send invitation to user
  result = api_instance.inviteuser(send_invitation)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->inviteuser: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_invitation** | [**Inviteuser**](Inviteuser.md)| Values to create an invitation | 

### Return type

[**Inviteuser**](Inviteuser.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_revoke_user_permission**
> PutRevokeUserPermission put_revoke_user_permission(email)

Revoke user permission

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

email = 'email_example' # String | Email of the invited user.


begin
  #Revoke user permission
  result = api_instance.put_revoke_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->put_revoke_user_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the invited user. | 

### Return type

[**PutRevokeUserPermission**](PutRevokeUserPermission.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **putresendcancelinvitation**
> Putresendcancelinvitation putresendcancelinvitation(action, email)

Resend / Cancel invitation

### Example
```ruby
# load the gem
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = Brevo::UserApi.new

action = 'action_example' # String | action

email = 'email_example' # String | Email of the invited user.


begin
  #Resend / Cancel invitation
  result = api_instance.putresendcancelinvitation(action, email)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling UserApi->putresendcancelinvitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| action | 
 **email** | **String**| Email of the invited user. | 

### Return type

[**Putresendcancelinvitation**](Putresendcancelinvitation.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



