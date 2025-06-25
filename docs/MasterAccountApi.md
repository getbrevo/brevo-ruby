# Brevo::MasterAccountApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**corporate_group_id_delete**](MasterAccountApi.md#corporate_group_id_delete) | **DELETE** /corporate/group/{id} | Delete a group
[**corporate_group_id_get**](MasterAccountApi.md#corporate_group_id_get) | **GET** /corporate/group/{id} | GET a group details
[**corporate_group_id_put**](MasterAccountApi.md#corporate_group_id_put) | **PUT** /corporate/group/{id} | Update a group of sub-accounts
[**corporate_group_post**](MasterAccountApi.md#corporate_group_post) | **POST** /corporate/group | Create a new group of sub-accounts
[**corporate_group_unlink_group_id_sub_accounts_put**](MasterAccountApi.md#corporate_group_unlink_group_id_sub_accounts_put) | **PUT** /corporate/group/unlink/{groupId}/subAccounts | Delete sub-account from group
[**corporate_ip_get**](MasterAccountApi.md#corporate_ip_get) | **GET** /corporate/ip | List of all IPs
[**corporate_master_account_get**](MasterAccountApi.md#corporate_master_account_get) | **GET** /corporate/masterAccount | Get the details of requested master account
[**corporate_sso_token_post**](MasterAccountApi.md#corporate_sso_token_post) | **POST** /corporate/ssoToken | Generate SSO token to access admin account
[**corporate_sub_account_get**](MasterAccountApi.md#corporate_sub_account_get) | **GET** /corporate/subAccount | Get the list of all the sub-accounts of the master account.
[**corporate_sub_account_id_applications_toggle_put**](MasterAccountApi.md#corporate_sub_account_id_applications_toggle_put) | **PUT** /corporate/subAccount/{id}/applications/toggle | Enable/disable sub-account application(s)
[**corporate_sub_account_id_delete**](MasterAccountApi.md#corporate_sub_account_id_delete) | **DELETE** /corporate/subAccount/{id} | Delete a sub-account
[**corporate_sub_account_id_get**](MasterAccountApi.md#corporate_sub_account_id_get) | **GET** /corporate/subAccount/{id} | Get sub-account details
[**corporate_sub_account_id_plan_put**](MasterAccountApi.md#corporate_sub_account_id_plan_put) | **PUT** /corporate/subAccount/{id}/plan | Update sub-account plan
[**corporate_sub_account_ip_associate_post**](MasterAccountApi.md#corporate_sub_account_ip_associate_post) | **POST** /corporate/subAccount/ip/associate | Associate an IP to sub-accounts
[**corporate_sub_account_ip_dissociate_put**](MasterAccountApi.md#corporate_sub_account_ip_dissociate_put) | **PUT** /corporate/subAccount/ip/dissociate | Dissociate an IP from sub-accounts
[**corporate_sub_account_key_post**](MasterAccountApi.md#corporate_sub_account_key_post) | **POST** /corporate/subAccount/key | Create an API key for a sub-account
[**corporate_sub_account_post**](MasterAccountApi.md#corporate_sub_account_post) | **POST** /corporate/subAccount | Create a new sub-account under a master account.
[**corporate_sub_account_sso_token_post**](MasterAccountApi.md#corporate_sub_account_sso_token_post) | **POST** /corporate/subAccount/ssoToken | Generate SSO token to access sub-account
[**corporate_sub_accounts_plan_put**](MasterAccountApi.md#corporate_sub_accounts_plan_put) | **PUT** /corporate/subAccounts/plan | Update sub-accounts plan
[**corporate_user_email_permissions_put**](MasterAccountApi.md#corporate_user_email_permissions_put) | **PUT** /corporate/user/{email}/permissions | Change admin user permissions
[**corporate_user_invitation_action_email_put**](MasterAccountApi.md#corporate_user_invitation_action_email_put) | **PUT** /corporate/user/invitation/{action}/{email} | Resend / cancel admin user invitation
[**corporate_user_revoke_email_delete**](MasterAccountApi.md#corporate_user_revoke_email_delete) | **DELETE** /corporate/user/revoke/{email} | Revoke an admin user
[**get_account_activity**](MasterAccountApi.md#get_account_activity) | **GET** /organization/activities | Get user activity logs
[**get_corporate_invited_users_list**](MasterAccountApi.md#get_corporate_invited_users_list) | **GET** /corporate/invited/users | Get the list of all admin users
[**get_corporate_user_permission**](MasterAccountApi.md#get_corporate_user_permission) | **GET** /corporate/user/{email}/permissions | Check admin user permissions
[**get_sub_account_groups**](MasterAccountApi.md#get_sub_account_groups) | **GET** /corporate/groups | Get the list of groups
[**invite_admin_user**](MasterAccountApi.md#invite_admin_user) | **POST** /corporate/user/invitation/send | Send invitation to an admin user


# **corporate_group_id_delete**
> corporate_group_id_delete(id)

Delete a group

This endpoint allows you to delete a group of sub-organizations. When a group is deleted, the sub-organizations are no longer part of this group. The users associated with the group are no longer associated with the group once deleted.

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

api_instance = Brevo::MasterAccountApi.new

id = 'id_example' # String | Id of the group


begin
  #Delete a group
  api_instance.corporate_group_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_group_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the group | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_group_id_get**
> CorporateGroupDetailsResponse corporate_group_id_get(id)

GET a group details

This endpoint allows you to retrieve a specific group’s information such as the list of sub-organizations and the user associated with the group.

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

api_instance = Brevo::MasterAccountApi.new

id = 'id_example' # String | Id of the group of sub-organization


begin
  #GET a group details
  result = api_instance.corporate_group_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_group_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the group of sub-organization | 

### Return type

[**CorporateGroupDetailsResponse**](CorporateGroupDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_group_id_put**
> corporate_group_id_put(id, body)

Update a group of sub-accounts

This endpoint allows you to update a group of sub-accounts

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

api_instance = Brevo::MasterAccountApi.new

id = 'id_example' # String | Id of the group

body = Brevo::Body3.new # Body3 | Group details to be updated.


begin
  #Update a group of sub-accounts
  api_instance.corporate_group_id_put(id, body)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_group_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the group | 
 **body** | [**Body3**](Body3.md)| Group details to be updated. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_group_post**
> InlineResponse201 corporate_group_post(body)

Create a new group of sub-accounts

This endpoint allows to create a group of sub-accounts

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

api_instance = Brevo::MasterAccountApi.new

body = Brevo::Body.new # Body | Group details to be created.


begin
  #Create a new group of sub-accounts
  result = api_instance.corporate_group_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_group_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)| Group details to be created. | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_group_unlink_group_id_sub_accounts_put**
> corporate_group_unlink_group_id_sub_accounts_put(group_id, body)

Delete sub-account from group

This endpoint allows you to remove a sub-organization from a group.

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

api_instance = Brevo::MasterAccountApi.new

group_id = 'group_id_example' # String | Id of the group

body = Brevo::Body4.new # Body4 | List of sub-account ids


begin
  #Delete sub-account from group
  api_instance.corporate_group_unlink_group_id_sub_accounts_put(group_id, body)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_group_unlink_group_id_sub_accounts_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Id of the group | 
 **body** | [**Body4**](Body4.md)| List of sub-account ids | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_ip_get**
> corporate_ip_get

List of all IPs

This endpoint allows you to retrieve the list of active IPs on your Admin account

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

api_instance = Brevo::MasterAccountApi.new

begin
  #List of all IPs
  api_instance.corporate_ip_get
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_ip_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_master_account_get**
> MasterDetailsResponse corporate_master_account_get

Get the details of requested master account

This endpoint will provide the details of the master account.

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

api_instance = Brevo::MasterAccountApi.new

begin
  #Get the details of requested master account
  result = api_instance.corporate_master_account_get
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_master_account_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MasterDetailsResponse**](MasterDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sso_token_post**
> GetSsoToken corporate_sso_token_post(sso_token_request_corporate)

Generate SSO token to access admin account

This endpoint generates an SSO token to authenticate and access the admin account using the endpoint https://account-app.brevo.com/account/login/corporate/sso/[token], where [token] will be replaced by the actual token.

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

api_instance = Brevo::MasterAccountApi.new

sso_token_request_corporate = Brevo::SsoTokenRequestCorporate.new # SsoTokenRequestCorporate | User email of admin account


begin
  #Generate SSO token to access admin account
  result = api_instance.corporate_sso_token_post(sso_token_request_corporate)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sso_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sso_token_request_corporate** | [**SsoTokenRequestCorporate**](SsoTokenRequestCorporate.md)| User email of admin account | 

### Return type

[**GetSsoToken**](GetSsoToken.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_get**
> SubAccountsResponse corporate_sub_account_get(offset, limit)

Get the list of all the sub-accounts of the master account.

This endpoint will provide the list all the sub-accounts of the master account.

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

api_instance = Brevo::MasterAccountApi.new

offset = 56 # Integer | Index of the first sub-account in the page

limit = 56 # Integer | Number of sub-accounts to be displayed on each page


begin
  #Get the list of all the sub-accounts of the master account.
  result = api_instance.corporate_sub_account_get(offset, limit)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Index of the first sub-account in the page | 
 **limit** | **Integer**| Number of sub-accounts to be displayed on each page | 

### Return type

[**SubAccountsResponse**](SubAccountsResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_id_applications_toggle_put**
> corporate_sub_account_id_applications_toggle_put(id, toggle_applications)

Enable/disable sub-account application(s)

API endpoint for the Corporate owner to enable/disable applications on the sub-account

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

api_instance = Brevo::MasterAccountApi.new

id = 789 # Integer | Id of the sub-account organization (mandatory)

toggle_applications = Brevo::SubAccountAppsToggleRequest.new # SubAccountAppsToggleRequest | List of applications to activate or deactivate on a sub-account


begin
  #Enable/disable sub-account application(s)
  api_instance.corporate_sub_account_id_applications_toggle_put(id, toggle_applications)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_id_applications_toggle_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the sub-account organization (mandatory) | 
 **toggle_applications** | [**SubAccountAppsToggleRequest**](SubAccountAppsToggleRequest.md)| List of applications to activate or deactivate on a sub-account | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_id_delete**
> corporate_sub_account_id_delete(id)

Delete a sub-account

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

api_instance = Brevo::MasterAccountApi.new

id = 789 # Integer | Id of the sub-account organization to be deleted


begin
  #Delete a sub-account
  api_instance.corporate_sub_account_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the sub-account organization to be deleted | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_id_get**
> SubAccountDetailsResponse corporate_sub_account_id_get(id)

Get sub-account details

This endpoint will provide the details for the specified sub-account company

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

api_instance = Brevo::MasterAccountApi.new

id = 789 # Integer | Id of the sub-account organization


begin
  #Get sub-account details
  result = api_instance.corporate_sub_account_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the sub-account organization | 

### Return type

[**SubAccountDetailsResponse**](SubAccountDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_id_plan_put**
> corporate_sub_account_id_plan_put(id, update_plan_details)

Update sub-account plan

This endpoint will update the sub-account plan. On the Corporate solution new version v2, you can set an unlimited number of credits in your sub-organization. Please pass the value “-1\" to set the consumable in unlimited mode.

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

api_instance = Brevo::MasterAccountApi.new

id = 789 # Integer | Id of the sub-account organization

update_plan_details = Brevo::SubAccountUpdatePlanRequest.new # SubAccountUpdatePlanRequest | Values to update a sub-account plan


begin
  #Update sub-account plan
  api_instance.corporate_sub_account_id_plan_put(id, update_plan_details)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_id_plan_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the sub-account organization | 
 **update_plan_details** | [**SubAccountUpdatePlanRequest**](SubAccountUpdatePlanRequest.md)| Values to update a sub-account plan | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_ip_associate_post**
> Object corporate_sub_account_ip_associate_post(body)

Associate an IP to sub-accounts

This endpoint allows to associate an IP to sub-accounts

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

api_instance = Brevo::MasterAccountApi.new

body = Brevo::Body1.new # Body1 | Ip address association details


begin
  #Associate an IP to sub-accounts
  result = api_instance.corporate_sub_account_ip_associate_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_ip_associate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body1**](Body1.md)| Ip address association details | 

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_ip_dissociate_put**
> corporate_sub_account_ip_dissociate_put(body)

Dissociate an IP from sub-accounts

This endpoint allows to dissociate an IP from sub-accounts

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

api_instance = Brevo::MasterAccountApi.new

body = Brevo::Body2.new # Body2 | Ip address dissociation details


begin
  #Dissociate an IP from sub-accounts
  api_instance.corporate_sub_account_ip_dissociate_put(body)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_ip_dissociate_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body2**](Body2.md)| Ip address dissociation details | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_key_post**
> CreateApiKeyResponse corporate_sub_account_key_post(create_api_key_request)

Create an API key for a sub-account

This endpoint will generate an API v3 key for a sub account

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

api_instance = Brevo::MasterAccountApi.new

create_api_key_request = Brevo::CreateApiKeyRequest.new # CreateApiKeyRequest | Values to generate API key for sub-account


begin
  #Create an API key for a sub-account
  result = api_instance.corporate_sub_account_key_post(create_api_key_request)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_key_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md)| Values to generate API key for sub-account | 

### Return type

[**CreateApiKeyResponse**](CreateApiKeyResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_post**
> CreateSubAccountResponse corporate_sub_account_post(sub_account_create)

Create a new sub-account under a master account.

This endpoint will create a new sub-account under a master account

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

api_instance = Brevo::MasterAccountApi.new

sub_account_create = Brevo::CreateSubAccount.new # CreateSubAccount | values to create new sub-account


begin
  #Create a new sub-account under a master account.
  result = api_instance.corporate_sub_account_post(sub_account_create)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_account_create** | [**CreateSubAccount**](CreateSubAccount.md)| values to create new sub-account | 

### Return type

[**CreateSubAccountResponse**](CreateSubAccountResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_account_sso_token_post**
> GetSsoToken corporate_sub_account_sso_token_post(sso_token_request)

Generate SSO token to access sub-account

This endpoint generates an sso token to authenticate and access a sub-account of the master using the account endpoint https://account-app.brevo.com/account/login/sub-account/sso/[token], where [token] will be replaced by the actual token.

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

api_instance = Brevo::MasterAccountApi.new

sso_token_request = Brevo::SsoTokenRequest.new # SsoTokenRequest | Values to generate SSO token for sub-account


begin
  #Generate SSO token to access sub-account
  result = api_instance.corporate_sub_account_sso_token_post(sso_token_request)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_account_sso_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sso_token_request** | [**SsoTokenRequest**](SsoTokenRequest.md)| Values to generate SSO token for sub-account | 

### Return type

[**GetSsoToken**](GetSsoToken.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_sub_accounts_plan_put**
> corporate_sub_accounts_plan_put(update_plan_details)

Update sub-accounts plan

This endpoint will update multiple sub-accounts plan. On the Corporate solution new version v2, you can set an unlimited number of credits in your sub-organization. Please pass the value “-1\" to set the consumable in unlimited mode.

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

api_instance = Brevo::MasterAccountApi.new

update_plan_details = Brevo::SubAccountsUpdatePlanRequest.new # SubAccountsUpdatePlanRequest | Values to update sub-accounts plan


begin
  #Update sub-accounts plan
  api_instance.corporate_sub_accounts_plan_put(update_plan_details)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_sub_accounts_plan_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_plan_details** | [**SubAccountsUpdatePlanRequest**](SubAccountsUpdatePlanRequest.md)| Values to update sub-accounts plan | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_user_email_permissions_put**
> corporate_user_email_permissions_put(email, body)

Change admin user permissions

This endpoint will allow you to change the permissions of Admin users of your Admin account

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

api_instance = Brevo::MasterAccountApi.new

email = 'email_example' # String | Email address of Admin user

body = Brevo::Body5.new # Body5 | Values to update an admin user permissions


begin
  #Change admin user permissions
  api_instance.corporate_user_email_permissions_put(email, body)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_user_email_permissions_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email address of Admin user | 
 **body** | [**Body5**](Body5.md)| Values to update an admin user permissions | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_user_invitation_action_email_put**
> InlineResponse200 corporate_user_invitation_action_email_put(action, email)

Resend / cancel admin user invitation

This endpoint will allow the user to: - Resend an admin user invitation - Cancel an admin user invitation 

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

api_instance = Brevo::MasterAccountApi.new

action = 'action_example' # String | Action to be performed (cancel / resend)

email = 'email_example' # String | Email address of the recipient


begin
  #Resend / cancel admin user invitation
  result = api_instance.corporate_user_invitation_action_email_put(action, email)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_user_invitation_action_email_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| Action to be performed (cancel / resend) | 
 **email** | **String**| Email address of the recipient | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corporate_user_revoke_email_delete**
> corporate_user_revoke_email_delete(email)

Revoke an admin user

This endpoint allows to revoke/remove an invited member of your Admin account

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

api_instance = Brevo::MasterAccountApi.new

email = 'email_example' # String | Email of the invited user


begin
  #Revoke an admin user
  api_instance.corporate_user_revoke_email_delete(email)
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->corporate_user_revoke_email_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the invited user | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_activity**
> GetAccountActivity get_account_activity(opts)

Get user activity logs

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

api_instance = Brevo::MasterAccountApi.new

opts = { 
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search.
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month.
  email: 'email_example', # String | Enter the user's email address to filter their activity in the account.
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document in the page.
}

begin
  #Get user activity logs
  result = api_instance.get_account_activity(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->get_account_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search. | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. | [optional] 
 **email** | **String**| Enter the user&#39;s email address to filter their activity in the account. | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document in the page. | [optional] [default to 0]

### Return type

[**GetAccountActivity**](GetAccountActivity.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporate_invited_users_list**
> GetCorporateInvitedUsersList get_corporate_invited_users_list

Get the list of all admin users

This endpoint allows you to list all Admin users of your Admin account

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

api_instance = Brevo::MasterAccountApi.new

begin
  #Get the list of all admin users
  result = api_instance.get_corporate_invited_users_list
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->get_corporate_invited_users_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCorporateInvitedUsersList**](GetCorporateInvitedUsersList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporate_user_permission**
> GetCorporateUserPermission get_corporate_user_permission(email)

Check admin user permissions

This endpoint will provide the list of admin user permissions

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

api_instance = Brevo::MasterAccountApi.new

email = 'email_example' # String | Email of the invited user


begin
  #Check admin user permissions
  result = api_instance.get_corporate_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->get_corporate_user_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the invited user | 

### Return type

[**GetCorporateUserPermission**](GetCorporateUserPermission.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sub_account_groups**
> Array&lt;InlineResponse2001&gt; get_sub_account_groups

Get the list of groups

This endpoint allows you to list all groups created on your Admin account.

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

api_instance = Brevo::MasterAccountApi.new

begin
  #Get the list of groups
  result = api_instance.get_sub_account_groups
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->get_sub_account_groups: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **invite_admin_user**
> InviteAdminUser invite_admin_user(send_invitation)

Send invitation to an admin user

`This endpoint allows you to invite a member to manage the Admin account  Features and their respective permissions are as below:  - `my_plan`:   - \"all\" - `api`:   - \"none\" - `user_management`:   - \"all\" - `app_management` | Not available in ENTv2:   - \"all\" - `sub_organization_groups`   - \"create\"   - \"edit_delete\" - `create_sub_organizations`   - \"all\" - `manage_sub_organizations`   - \"all\" - `analytics`   - \"download_data\"   - \"create_alerts\"   - \"my_looks\"   - \"explore_create\" - `security`   - \"all\"  **Note**: - If `all_features_access: false` then only privileges are required otherwise if `true` then it's assumed that all permissions will be there for the invited admin user. 

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

api_instance = Brevo::MasterAccountApi.new

send_invitation = Brevo::InviteAdminUser.new # InviteAdminUser | Payload to send an invitation


begin
  #Send invitation to an admin user
  result = api_instance.invite_admin_user(send_invitation)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling MasterAccountApi->invite_admin_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_invitation** | [**InviteAdminUser**](InviteAdminUser.md)| Payload to send an invitation | 

### Return type

[**InviteAdminUser**](InviteAdminUser.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



