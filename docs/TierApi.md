# Brevo::TierApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_subscription_to_tier**](TierApi.md#add_subscription_to_tier) | **POST** /loyalty/tier/programs/{pid}/contacts/{cid}/tiers/{tid} | Assign a tier
[**create_tier_for_tier_group**](TierApi.md#create_tier_for_tier_group) | **POST** /loyalty/tier/programs/{pid}/tier-groups/{gid}/tiers | Create a tier
[**create_tier_group**](TierApi.md#create_tier_group) | **POST** /loyalty/tier/programs/{pid}/tier-groups | Create a tier group
[**delete_tier**](TierApi.md#delete_tier) | **DELETE** /loyalty/tier/programs/{pid}/tiers/{tid} | Delete tier
[**delete_tier_group**](TierApi.md#delete_tier_group) | **DELETE** /loyalty/tier/programs/{pid}/tier-groups/{gid} | Delete tier group
[**get_list_of_tier_groups**](TierApi.md#get_list_of_tier_groups) | **GET** /loyalty/tier/programs/{pid}/tier-groups | List tier groups
[**get_loyalty_program_tier**](TierApi.md#get_loyalty_program_tier) | **GET** /loyalty/tier/programs/{pid}/tiers | List tiers
[**get_tier_group**](TierApi.md#get_tier_group) | **GET** /loyalty/tier/programs/{pid}/tier-groups/{gid} | Get tier group
[**update_tier**](TierApi.md#update_tier) | **PUT** /loyalty/tier/programs/{pid}/tiers/{tid} | Update tier
[**update_tier_group**](TierApi.md#update_tier_group) | **PUT** /loyalty/tier/programs/{pid}/tier-groups/{gid} | Update tier group


# **add_subscription_to_tier**
> TierForContact add_subscription_to_tier(pid, cid, tid)

Assign a tier

Manually assigns a tier to a specific membership.

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

cid = 'cid_example' # String | Contact ID

tid = 'tid_example' # String | Tier ID


begin
  #Assign a tier
  result = api_instance.add_subscription_to_tier(pid, cid, tid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->add_subscription_to_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **cid** | [**String**](.md)| Contact ID | 
 **tid** | [**String**](.md)| Tier ID | 

### Return type

[**TierForContact**](TierForContact.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_tier_for_tier_group**
> Tier create_tier_for_tier_group(pid, gid, payload)

Create a tier

Creates a new tier in a loyalty program tier group. *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

gid = 'gid_example' # String | Tier group ID

payload = Brevo::TierRequest.new # TierRequest | 


begin
  #Create a tier
  result = api_instance.create_tier_for_tier_group(pid, gid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->create_tier_for_tier_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **gid** | [**String**](.md)| Tier group ID | 
 **payload** | [**TierRequest**](TierRequest.md)|  | 

### Return type

[**Tier**](Tier.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_tier_group**
> TierGroup create_tier_group(pid, payload)

Create a tier group

Creates a new tier group in a loyalty program. *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

payload = Brevo::CreateTierGroupRequest.new # CreateTierGroupRequest | Tier group creation payload


begin
  #Create a tier group
  result = api_instance.create_tier_group(pid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->create_tier_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **payload** | [**CreateTierGroupRequest**](CreateTierGroupRequest.md)| Tier group creation payload | 

### Return type

[**TierGroup**](TierGroup.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tier**
> String delete_tier(pid, tid)

Delete tier

Deletes a tier from a loyalty program tier group. *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

tid = 'tid_example' # String | Tier ID


begin
  #Delete tier
  result = api_instance.delete_tier(pid, tid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->delete_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **tid** | [**String**](.md)| Tier ID | 

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tier_group**
> String delete_tier_group(pid, gid)

Delete tier group

Deletes a tier group from a loyalty program. *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

gid = 'gid_example' # String | Tier group ID


begin
  #Delete tier group
  result = api_instance.delete_tier_group(pid, gid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->delete_tier_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **gid** | [**String**](.md)| Tier group ID | 

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list_of_tier_groups**
> TierGroupPage get_list_of_tier_groups(pid, opts)

List tier groups

Returns the list of tier groups defined within the loyalty program.

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

opts = { 
  version: 'draft' # String | Select 'active' to retrieve list of all tier groups which are live for clients. Select draft to retrieve list of all non deleted tier groups.
}

begin
  #List tier groups
  result = api_instance.get_list_of_tier_groups(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->get_list_of_tier_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **version** | **String**| Select &#39;active&#39; to retrieve list of all tier groups which are live for clients. Select draft to retrieve list of all non deleted tier groups. | [optional] [default to draft]

### Return type

[**TierGroupPage**](TierGroupPage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_loyalty_program_tier**
> LoyaltyTierPage get_loyalty_program_tier(pid, opts)

List tiers

Returns the list of tiers defined within the loyalty program.

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

opts = { 
  version: 'draft' # String | Select 'active' to retrieve list of all tiers which are live for clients. Select draft to retrieve list of all non deleted tiers.
}

begin
  #List tiers
  result = api_instance.get_loyalty_program_tier(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->get_loyalty_program_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **version** | **String**| Select &#39;active&#39; to retrieve list of all tiers which are live for clients. Select draft to retrieve list of all non deleted tiers. | [optional] [default to draft]

### Return type

[**LoyaltyTierPage**](LoyaltyTierPage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tier_group**
> TierGroup get_tier_group(pid, gid, opts)

Get tier group

Returns tier group information.

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

gid = 'gid_example' # String | Tier group ID

opts = { 
  version: 'draft' # String | Select active to retrieve active version of tier group. Select draft to retrieve latest changes in tier group.
}

begin
  #Get tier group
  result = api_instance.get_tier_group(pid, gid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->get_tier_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **gid** | [**String**](.md)| Tier group ID | 
 **version** | **String**| Select active to retrieve active version of tier group. Select draft to retrieve latest changes in tier group. | [optional] [default to draft]

### Return type

[**TierGroup**](TierGroup.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tier**
> Tier update_tier(pid, tid, payload)

Update tier

Modifies an existing tier for the specified tier group *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

tid = 'tid_example' # String | Tier ID

payload = Brevo::TierRequestPutPayload.new # TierRequestPutPayload | 


begin
  #Update tier
  result = api_instance.update_tier(pid, tid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->update_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **tid** | [**String**](.md)| Tier ID | 
 **payload** | [**TierRequestPutPayload**](TierRequestPutPayload.md)|  | 

### Return type

[**Tier**](Tier.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tier_group**
> TierGroup update_tier_group(pid, gid, payload)

Update tier group

Updates a tier group from a loyalty program. *(The changes will take effect with the next publication of the loyalty program)*

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

api_instance = Brevo::TierApi.new

pid = 'pid_example' # String | Loyalty Program ID

gid = 'gid_example' # String | Tier group ID

payload = Brevo::UpdateTierGroupRequest.new # UpdateTierGroupRequest | Tier group update payload


begin
  #Update tier group
  result = api_instance.update_tier_group(pid, gid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TierApi->update_tier_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **gid** | [**String**](.md)| Tier group ID | 
 **payload** | [**UpdateTierGroupRequest**](UpdateTierGroupRequest.md)| Tier group update payload | 

### Return type

[**TierGroup**](TierGroup.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



