# Brevo::MasterAccountApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**corporate_master_account_get**](MasterAccountApi.md#corporate_master_account_get) | **GET** /corporate/masterAccount | Get the details of requested master account
[**corporate_sub_account_get**](MasterAccountApi.md#corporate_sub_account_get) | **GET** /corporate/subAccount | Get the list of all the sub-accounts of the master account.
[**corporate_sub_account_id_applications_toggle_put**](MasterAccountApi.md#corporate_sub_account_id_applications_toggle_put) | **PUT** /corporate/subAccount/{id}/applications/toggle | Enable/disable sub-account application(s)
[**corporate_sub_account_id_delete**](MasterAccountApi.md#corporate_sub_account_id_delete) | **DELETE** /corporate/subAccount/{id} | Delete a sub-account
[**corporate_sub_account_id_get**](MasterAccountApi.md#corporate_sub_account_id_get) | **GET** /corporate/subAccount/{id} | Get sub-account details
[**corporate_sub_account_id_plan_put**](MasterAccountApi.md#corporate_sub_account_id_plan_put) | **PUT** /corporate/subAccount/{id}/plan | Update sub-account plan
[**corporate_sub_account_key_post**](MasterAccountApi.md#corporate_sub_account_key_post) | **POST** /corporate/subAccount/key | Create an API key for a sub-account
[**corporate_sub_account_post**](MasterAccountApi.md#corporate_sub_account_post) | **POST** /corporate/subAccount | Create a new sub-account under a master account.
[**corporate_sub_account_sso_token_post**](MasterAccountApi.md#corporate_sub_account_sso_token_post) | **POST** /corporate/subAccount/ssoToken | Generate SSO token to access Brevo
[**get_account_activity**](MasterAccountApi.md#get_account_activity) | **GET** /organization/activities | Get user activity logs


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

This endpoint will update the sub-account plan

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

Generate SSO token to access Brevo

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
  #Generate SSO token to access Brevo
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
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document in the page. | [optional] [default to 0]

### Return type

[**GetAccountActivity**](GetAccountActivity.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



