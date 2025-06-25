# Brevo::RewardApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_code_count**](RewardApi.md#get_code_count) | **GET** /loyalty/offer/programs/{pid}/code-pools/{cpid}/codes-count | Get code count
[**loyalty_offer_programs_pid_offers_get**](RewardApi.md#loyalty_offer_programs_pid_offers_get) | **GET** /loyalty/offer/programs/{pid}/offers | Get Reward Page API
[**loyalty_offer_programs_pid_offers_post**](RewardApi.md#loyalty_offer_programs_pid_offers_post) | **POST** /loyalty/offer/programs/{pid}/offers | Create a reward
[**loyalty_offer_programs_pid_rewards_attribute_post**](RewardApi.md#loyalty_offer_programs_pid_rewards_attribute_post) | **POST** /loyalty/offer/programs/{pid}/rewards/attribute | Create a voucher
[**loyalty_offer_programs_pid_rewards_redeem_post**](RewardApi.md#loyalty_offer_programs_pid_rewards_redeem_post) | **POST** /loyalty/offer/programs/{pid}/rewards/redeem | Create redeem voucher request
[**loyalty_offer_programs_pid_rewards_redeem_tid_complete_post**](RewardApi.md#loyalty_offer_programs_pid_rewards_redeem_tid_complete_post) | **POST** /loyalty/offer/programs/{pid}/rewards/redeem/{tid}/complete | Complete redeem voucher request
[**loyalty_offer_programs_pid_rewards_revoke_delete**](RewardApi.md#loyalty_offer_programs_pid_rewards_revoke_delete) | **DELETE** /loyalty/offer/programs/{pid}/rewards/revoke | Revoke vouchers
[**loyalty_offer_programs_pid_rewards_rid_get**](RewardApi.md#loyalty_offer_programs_pid_rewards_rid_get) | **GET** /loyalty/offer/programs/{pid}/rewards/{rid} | Get reward information
[**loyalty_offer_programs_pid_rewards_validate_post**](RewardApi.md#loyalty_offer_programs_pid_rewards_validate_post) | **POST** /loyalty/offer/programs/{pid}/rewards/validate | Validate a reward
[**loyalty_offer_programs_pid_vouchers_get**](RewardApi.md#loyalty_offer_programs_pid_vouchers_get) | **GET** /loyalty/offer/programs/{pid}/vouchers | Get voucher for a contact


# **get_code_count**
> MainCodeCountHttpResponse get_code_count(pid, cpid)

Get code count

Get code count

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

cpid = 'cpid_example' # String | Code Pool ID


begin
  #Get code count
  result = api_instance.get_code_count(pid, cpid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->get_code_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **cpid** | [**String**](.md)| Code Pool ID | 

### Return type

[**MainCodeCountHttpResponse**](MainCodeCountHttpResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_offers_get**
> MainRewardPage loyalty_offer_programs_pid_offers_get(pid, opts)

Get Reward Page API

Returns a reward page

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

opts = { 
  limit: 25, # Integer | Page size
  offset: 0, # Integer | Pagination offset
  state: 'all', # String | State of the reward
  version: 'draft' # String | Version
}

begin
  #Get Reward Page API
  result = api_instance.loyalty_offer_programs_pid_offers_get(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_offers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **limit** | **Integer**| Page size | [optional] [default to 25]
 **offset** | **Integer**| Pagination offset | [optional] [default to 0]
 **state** | **String**| State of the reward | [optional] [default to all]
 **version** | **String**| Version | [optional] [default to draft]

### Return type

[**MainRewardPage**](MainRewardPage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_offers_post**
> MainCreateRewardResponse loyalty_offer_programs_pid_offers_post(pid, payload)

Create a reward

Creates a new reward in loyalty program.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

payload = Brevo::MainCreateRewardPayload.new # MainCreateRewardPayload | Reward creation payload


begin
  #Create a reward
  result = api_instance.loyalty_offer_programs_pid_offers_post(pid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_offers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **payload** | [**MainCreateRewardPayload**](MainCreateRewardPayload.md)| Reward creation payload | 

### Return type

[**MainCreateRewardResponse**](MainCreateRewardResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_attribute_post**
> MainRewardAttribution loyalty_offer_programs_pid_rewards_attribute_post(pid, payload)

Create a voucher

Create a voucher and attribute it to a specific membership.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

payload = Brevo::MainAttributeRewardPayload.new # MainAttributeRewardPayload | Voucher creation payload


begin
  #Create a voucher
  result = api_instance.loyalty_offer_programs_pid_rewards_attribute_post(pid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_attribute_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **payload** | [**MainAttributeRewardPayload**](MainAttributeRewardPayload.md)| Voucher creation payload | 

### Return type

[**MainRewardAttribution**](MainRewardAttribution.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_redeem_post**
> MainRedeem loyalty_offer_programs_pid_rewards_redeem_post(pid, payload)

Create redeem voucher request

Creates a request to redeem a voucher.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

payload = Brevo::MainCreateRedeemPayload.new # MainCreateRedeemPayload | Redeem transaction creation payload


begin
  #Create redeem voucher request
  result = api_instance.loyalty_offer_programs_pid_rewards_redeem_post(pid, payload)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_redeem_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **payload** | [**MainCreateRedeemPayload**](MainCreateRedeemPayload.md)| Redeem transaction creation payload | 

### Return type

[**MainRedeem**](MainRedeem.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_redeem_tid_complete_post**
> MainRedeem loyalty_offer_programs_pid_rewards_redeem_tid_complete_post(pid, tid)

Complete redeem voucher request

Completes voucher redeem request.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

tid = 'tid_example' # String | Redeem transaction ID


begin
  #Complete redeem voucher request
  result = api_instance.loyalty_offer_programs_pid_rewards_redeem_tid_complete_post(pid, tid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_redeem_tid_complete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **tid** | **String**| Redeem transaction ID | 

### Return type

[**MainRedeem**](MainRedeem.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_revoke_delete**
> String loyalty_offer_programs_pid_rewards_revoke_delete(pid, opts)

Revoke vouchers

Revoke attributed vouchers.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

opts = { 
  attributed_reward_ids: 'attributed_reward_ids_example' # String | Reward Attribution IDs (comma seperated)
}

begin
  #Revoke vouchers
  result = api_instance.loyalty_offer_programs_pid_rewards_revoke_delete(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_revoke_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **attributed_reward_ids** | **String**| Reward Attribution IDs (comma seperated) | [optional] 

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_rid_get**
> MainReward loyalty_offer_programs_pid_rewards_rid_get(pid, rid, opts)

Get reward information

Returns reward information.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

rid = 'rid_example' # String | Reward ID

opts = { 
  version: 'draft' # String | Version
}

begin
  #Get reward information
  result = api_instance.loyalty_offer_programs_pid_rewards_rid_get(pid, rid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_rid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **rid** | [**String**](.md)| Reward ID | 
 **version** | **String**| Version | [optional] [default to draft]

### Return type

[**MainReward**](MainReward.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_rewards_validate_post**
> MainRewardValidate loyalty_offer_programs_pid_rewards_validate_post(pid, body)

Validate a reward

Validates a reward.

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

body = Brevo::MainValidateRewardPayload.new # MainValidateRewardPayload | Reward validation payload


begin
  #Validate a reward
  result = api_instance.loyalty_offer_programs_pid_rewards_validate_post(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_rewards_validate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **body** | [**MainValidateRewardPayload**](MainValidateRewardPayload.md)| Reward validation payload | 

### Return type

[**MainRewardValidate**](MainRewardValidate.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_offer_programs_pid_vouchers_get**
> MainModelContactRewardsResp loyalty_offer_programs_pid_vouchers_get(pid, contact_id, opts)

Get voucher for a contact

Get voucher for a contact

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

api_instance = Brevo::RewardApi.new

pid = 'pid_example' # String | Loyalty Program ID

contact_id = 56 # Integer | Contact ID

opts = { 
  limit: 25, # Integer | Page size
  offset: 0, # Integer | Pagination offset
  sort: 'desc', # String | Sort order
  sort_field: 'updatedAt', # String | Sort field
  metadata_key_value: 'metadata_key_value_example', # String | Metadata value for a Key filter
  reward_id: 'reward_id_example' # String | Reward ID
}

begin
  #Get voucher for a contact
  result = api_instance.loyalty_offer_programs_pid_vouchers_get(pid, contact_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling RewardApi->loyalty_offer_programs_pid_vouchers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program ID | 
 **contact_id** | **Integer**| Contact ID | 
 **limit** | **Integer**| Page size | [optional] [default to 25]
 **offset** | **Integer**| Pagination offset | [optional] [default to 0]
 **sort** | **String**| Sort order | [optional] [default to desc]
 **sort_field** | **String**| Sort field | [optional] [default to updatedAt]
 **metadata_key_value** | **String**| Metadata value for a Key filter | [optional] 
 **reward_id** | **String**| Reward ID | [optional] 

### Return type

[**MainModelContactRewardsResp**](MainModelContactRewardsResp.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



