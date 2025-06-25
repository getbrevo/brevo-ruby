# Brevo::ProgramApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_lp**](ProgramApi.md#create_new_lp) | **POST** /loyalty/config/programs | Create loyalty program
[**delete_contact_members**](ProgramApi.md#delete_contact_members) | **DELETE** /loyalty/config/programs/{pid}/subscription-members | Delete subscription member
[**delete_loyalty_program**](ProgramApi.md#delete_loyalty_program) | **DELETE** /loyalty/config/programs/{pid} | Delete Loyalty Program
[**get_loyalty_program_info**](ProgramApi.md#get_loyalty_program_info) | **GET** /loyalty/config/programs/{pid} | Get loyalty program Info
[**get_lp_list**](ProgramApi.md#get_lp_list) | **GET** /loyalty/config/programs | Get loyalty program list
[**get_parameter_subscription_info**](ProgramApi.md#get_parameter_subscription_info) | **GET** /loyalty/config/programs/{pid}/account-info | Get Subscription Data
[**partially_update_loyalty_program**](ProgramApi.md#partially_update_loyalty_program) | **PATCH** /loyalty/config/programs/{pid} | Partially update loyalty program
[**publish_loyalty_program**](ProgramApi.md#publish_loyalty_program) | **POST** /loyalty/config/programs/{pid}/publish | Publish loyalty program
[**subscribe_member_to_a_subscription**](ProgramApi.md#subscribe_member_to_a_subscription) | **POST** /loyalty/config/programs/{pid}/subscription-members | Create subscription member
[**subscribe_to_loyalty_program**](ProgramApi.md#subscribe_to_loyalty_program) | **POST** /loyalty/config/programs/{pid}/subscriptions | Create subscription
[**update_loyalty_program**](ProgramApi.md#update_loyalty_program) | **PUT** /loyalty/config/programs/{pid} | Update loyalty program


# **create_new_lp**
> LoyaltyProgram create_new_lp(body)

Create loyalty program

Creates loyalty program

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

api_instance = Brevo::ProgramApi.new

body = Brevo::CreateLoyaltyProgramPayload.new # CreateLoyaltyProgramPayload | Create Loyalty Program Payload


begin
  #Create loyalty program
  result = api_instance.create_new_lp(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->create_new_lp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateLoyaltyProgramPayload**](CreateLoyaltyProgramPayload.md)| Create Loyalty Program Payload | 

### Return type

[**LoyaltyProgram**](LoyaltyProgram.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_contact_members**
> delete_contact_members(pid, member_contact_ids)

Delete subscription member

Deletes member from a subscription

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

member_contact_ids = 'member_contact_ids_example' # String | Member Contact Ids


begin
  #Delete subscription member
  api_instance.delete_contact_members(pid, member_contact_ids)
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->delete_contact_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **member_contact_ids** | **String**| Member Contact Ids | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_loyalty_program**
> delete_loyalty_program(pid)

Delete Loyalty Program

Deletes Loyalty Program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id


begin
  #Delete Loyalty Program
  api_instance.delete_loyalty_program(pid)
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->delete_loyalty_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_loyalty_program_info**
> LoyaltyProgram get_loyalty_program_info(pid)

Get loyalty program Info

Returns loyalty program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id


begin
  #Get loyalty program Info
  result = api_instance.get_loyalty_program_info(pid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->get_loyalty_program_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 

### Return type

[**LoyaltyProgram**](LoyaltyProgram.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_lp_list**
> LoyaltyProgramPage get_lp_list(opts)

Get loyalty program list

Returns list of loyalty programs

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

api_instance = Brevo::ProgramApi.new

opts = { 
  limit: 56, # Integer | Number of documents per page
  offset: 56, # Integer | Index of the first document in the page
  sort_field: 'sort_field_example', # String | Sort documents by field
  sort: 'sort_example' # String | Sort the documents in the ascending or descending order
}

begin
  #Get loyalty program list
  result = api_instance.get_lp_list(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->get_lp_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] 
 **offset** | **Integer**| Index of the first document in the page | [optional] 
 **sort_field** | **String**| Sort documents by field | [optional] 
 **sort** | **String**| Sort the documents in the ascending or descending order | [optional] 

### Return type

[**LoyaltyProgramPage**](LoyaltyProgramPage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_parameter_subscription_info**
> SubscriptionHandlerInfo get_parameter_subscription_info(pid, opts)

Get Subscription Data

Get Information of balances, tiers, rewards and subscription members for a subscription

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

opts = { 
  contact_id: 'contact_id_example', # String | Contact Id
  params: 'params_example', # String | Filter List
  loyalty_subscription_id: 'loyalty_subscription_id_example' # String | Loyalty Subscription Id
}

begin
  #Get Subscription Data
  result = api_instance.get_parameter_subscription_info(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->get_parameter_subscription_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **contact_id** | **String**| Contact Id | [optional] 
 **params** | **String**| Filter List | [optional] 
 **loyalty_subscription_id** | **String**| Loyalty Subscription Id | [optional] 

### Return type

[**SubscriptionHandlerInfo**](SubscriptionHandlerInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partially_update_loyalty_program**
> LoyaltyProgram partially_update_loyalty_program(pid, body)

Partially update loyalty program

Partially updates loyalty program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::PatchLoyaltyProgramPayload.new # PatchLoyaltyProgramPayload | Loyalty Program Payload


begin
  #Partially update loyalty program
  result = api_instance.partially_update_loyalty_program(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->partially_update_loyalty_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**PatchLoyaltyProgramPayload**](PatchLoyaltyProgramPayload.md)| Loyalty Program Payload | 

### Return type

[**LoyaltyProgram**](LoyaltyProgram.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **publish_loyalty_program**
> publish_loyalty_program(pid)

Publish loyalty program

Publishes loyalty program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id


begin
  #Publish loyalty program
  api_instance.publish_loyalty_program(pid)
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->publish_loyalty_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subscribe_member_to_a_subscription**
> SubscriptionMember subscribe_member_to_a_subscription(pid, body)

Create subscription member

Add member to a subscription

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::AddSubscriptionMemberPayload.new # AddSubscriptionMemberPayload | Add Subscription Member Payload


begin
  #Create subscription member
  result = api_instance.subscribe_member_to_a_subscription(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->subscribe_member_to_a_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**AddSubscriptionMemberPayload**](AddSubscriptionMemberPayload.md)| Add Subscription Member Payload | 

### Return type

[**SubscriptionMember**](SubscriptionMember.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subscribe_to_loyalty_program**
> Subscription subscribe_to_loyalty_program(pid, body)

Create subscription

Subscribes to a loyalty program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::CreateSubscriptionPayload.new # CreateSubscriptionPayload | Create Subscription Payload


begin
  #Create subscription
  result = api_instance.subscribe_to_loyalty_program(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->subscribe_to_loyalty_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**CreateSubscriptionPayload**](CreateSubscriptionPayload.md)| Create Subscription Payload | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_loyalty_program**
> LoyaltyProgram update_loyalty_program(pid, body)

Update loyalty program

Updates loyalty program

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

api_instance = Brevo::ProgramApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::UpdateLoyaltyProgramPayload.new # UpdateLoyaltyProgramPayload | Update Loyalty Program Payload


begin
  #Update loyalty program
  result = api_instance.update_loyalty_program(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ProgramApi->update_loyalty_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**UpdateLoyaltyProgramPayload**](UpdateLoyaltyProgramPayload.md)| Update Loyalty Program Payload | 

### Return type

[**LoyaltyProgram**](LoyaltyProgram.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



