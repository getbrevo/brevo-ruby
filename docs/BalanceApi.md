# Brevo::BalanceApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**begin_transaction**](BalanceApi.md#begin_transaction) | **POST** /loyalty/balance/programs/{pid}/transactions | Create new transaction
[**cancel_transaction**](BalanceApi.md#cancel_transaction) | **POST** /loyalty/balance/programs/{pid}/transactions/{tid}/cancel | Cancel transaction
[**complete_transaction**](BalanceApi.md#complete_transaction) | **POST** /loyalty/balance/programs/{pid}/transactions/{tid}/complete | Complete transaction
[**create_balance_limit**](BalanceApi.md#create_balance_limit) | **POST** /loyalty/balance/programs/{pid}/balance-definitions/{bdid}/limits | Create balance limits
[**create_balance_order**](BalanceApi.md#create_balance_order) | **POST** /loyalty/balance/programs/{pid}/create-order | Create balance order
[**delete_balance_definition**](BalanceApi.md#delete_balance_definition) | **DELETE** /loyalty/balance/programs/{pid}/balance-definitions/{bdid} | Delete balance definition
[**delete_balance_limit**](BalanceApi.md#delete_balance_limit) | **DELETE** /loyalty/balance/programs/{pid}/balance-definitions/{bdid}/limits/{blid} | Delete balance limit
[**get_balance_definition**](BalanceApi.md#get_balance_definition) | **GET** /loyalty/balance/programs/{pid}/balance-definitions/{bdid} | Get balance definition
[**get_balance_definition_list**](BalanceApi.md#get_balance_definition_list) | **GET** /loyalty/balance/programs/{pid}/balance-definitions | Get balance definition list
[**get_balance_limit**](BalanceApi.md#get_balance_limit) | **GET** /loyalty/balance/programs/{pid}/balance-definitions/{bdid}/limits/{blid} | Get balance limits
[**get_contact_balances**](BalanceApi.md#get_contact_balances) | **GET** /loyalty/balance/programs/{pid}/contact-balances | Get balance list
[**get_subscription_balances**](BalanceApi.md#get_subscription_balances) | **GET** /loyalty/balance/programs/{pid}/subscriptions/{cid}/balances | Get subscription balances
[**loyalty_balance_programs_pid_active_balance_get**](BalanceApi.md#loyalty_balance_programs_pid_active_balance_get) | **GET** /loyalty/balance/programs/{pid}/active-balance | Get Active Balances API
[**loyalty_balance_programs_pid_balance_definitions_post**](BalanceApi.md#loyalty_balance_programs_pid_balance_definitions_post) | **POST** /loyalty/balance/programs/{pid}/balance-definitions | Create balance definition
[**loyalty_balance_programs_pid_subscriptions_cid_balances_post**](BalanceApi.md#loyalty_balance_programs_pid_subscriptions_cid_balances_post) | **POST** /loyalty/balance/programs/{pid}/subscriptions/{cid}/balances | Create subscription balances
[**loyalty_balance_programs_pid_transaction_history_get**](BalanceApi.md#loyalty_balance_programs_pid_transaction_history_get) | **GET** /loyalty/balance/programs/{pid}/transaction-history | Get Transaction History API
[**update_balance_definition**](BalanceApi.md#update_balance_definition) | **PUT** /loyalty/balance/programs/{pid}/balance-definitions/{bdid} | Update balance definition
[**update_balance_limit**](BalanceApi.md#update_balance_limit) | **PUT** /loyalty/balance/programs/{pid}/balance-definitions/{bdid}/limits/{blid} | Updates balance limit


# **begin_transaction**
> Transaction begin_transaction(pid, body)

Create new transaction

Creates new transaction and returns information

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::CreateTransactionPayload.new # CreateTransactionPayload | Transaction Payload


begin
  #Create new transaction
  result = api_instance.begin_transaction(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->begin_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**CreateTransactionPayload**](CreateTransactionPayload.md)| Transaction Payload | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_transaction**
> Transaction cancel_transaction(pid, tid)

Cancel transaction

Cancels transaction

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

tid = 'tid_example' # String | Transaction Id


begin
  #Cancel transaction
  result = api_instance.cancel_transaction(pid, tid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->cancel_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **tid** | [**String**](.md)| Transaction Id | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **complete_transaction**
> Transaction complete_transaction(pid, tid)

Complete transaction

Completes transaction

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

tid = 'tid_example' # String | Transaction Id


begin
  #Complete transaction
  result = api_instance.complete_transaction(pid, tid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->complete_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **tid** | [**String**](.md)| Transaction Id | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_balance_limit**
> BalanceLimit create_balance_limit(pid, bdid, body)

Create balance limits

Creates balance limit and sends the created UUID along with the data

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

body = Brevo::CreateBalanceLimitPayload.new # CreateBalanceLimitPayload | Balance Definition Payload


begin
  #Create balance limits
  result = api_instance.create_balance_limit(pid, bdid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->create_balance_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **body** | [**CreateBalanceLimitPayload**](CreateBalanceLimitPayload.md)| Balance Definition Payload | 

### Return type

[**BalanceLimit**](BalanceLimit.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_balance_order**
> BalanceOrder create_balance_order(pid, body)

Create balance order

Returns created order

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::CreateOrderPayload.new # CreateOrderPayload | Order Payload


begin
  #Create balance order
  result = api_instance.create_balance_order(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->create_balance_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**CreateOrderPayload**](CreateOrderPayload.md)| Order Payload | 

### Return type

[**BalanceOrder**](BalanceOrder.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_balance_definition**
> delete_balance_definition(pid, bdid)

Delete balance definition

Delete Balance definition

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id


begin
  #Delete balance definition
  api_instance.delete_balance_definition(pid, bdid)
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->delete_balance_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_balance_limit**
> delete_balance_limit(pid, bdid, blid)

Delete balance limit

Delete balance limit

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

blid = 'blid_example' # String | Balance Limit Id


begin
  #Delete balance limit
  api_instance.delete_balance_limit(pid, bdid, blid)
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->delete_balance_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **blid** | [**String**](.md)| Balance Limit Id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_balance_definition**
> BalanceDefinition get_balance_definition(pid, bdid, opts)

Get balance definition

Returns balance definition

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

opts = { 
  version: 'draft' # String | Version
}

begin
  #Get balance definition
  result = api_instance.get_balance_definition(pid, bdid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->get_balance_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **version** | **String**| Version | [optional] [default to draft]

### Return type

[**BalanceDefinition**](BalanceDefinition.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_balance_definition_list**
> BalanceDefinitionPage get_balance_definition_list(pid, opts)

Get balance definition list

Returns balance definition page

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

opts = { 
  limit: 200, # Integer | Limit the number of records returned
  offset: 0, # Integer | Offset to paginate records
  sort_field: 'updated_at', # String | Field to sort by
  sort: 'desc', # String | Sort direction
  version: 'draft' # String | Version
}

begin
  #Get balance definition list
  result = api_instance.get_balance_definition_list(pid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->get_balance_definition_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **limit** | **Integer**| Limit the number of records returned | [optional] [default to 200]
 **offset** | **Integer**| Offset to paginate records | [optional] [default to 0]
 **sort_field** | **String**| Field to sort by | [optional] [default to updated_at]
 **sort** | **String**| Sort direction | [optional] [default to desc]
 **version** | **String**| Version | [optional] [default to draft]

### Return type

[**BalanceDefinitionPage**](BalanceDefinitionPage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_balance_limit**
> BalanceLimit get_balance_limit(pid, bdid, blid, opts)

Get balance limits

Fetches balance limits and send the created UUID along with the data

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

blid = 'blid_example' # String | Balance Limit Id

opts = { 
  version: 'draft' # String | Version
}

begin
  #Get balance limits
  result = api_instance.get_balance_limit(pid, bdid, blid, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->get_balance_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **blid** | [**String**](.md)| Balance Limit Id | 
 **version** | **String**| Version | [optional] [default to draft]

### Return type

[**BalanceLimit**](BalanceLimit.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_balances**
> ContactBalancesResp get_contact_balances(pid)

Get balance list

Returns balance list

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id


begin
  #Get balance list
  result = api_instance.get_contact_balances(pid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->get_contact_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 

### Return type

[**ContactBalancesResp**](ContactBalancesResp.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription_balances**
> ModelSubscriptionBalanceResp get_subscription_balances(cid, pid)

Get subscription balances

Returns subscription balances

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

api_instance = Brevo::BalanceApi.new

cid = 'cid_example' # String | Contact Id

pid = 'pid_example' # String | Loyalty Program Id


begin
  #Get subscription balances
  result = api_instance.get_subscription_balances(cid, pid)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->get_subscription_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Contact Id | 
 **pid** | [**String**](.md)| Loyalty Program Id | 

### Return type

[**ModelSubscriptionBalanceResp**](ModelSubscriptionBalanceResp.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_balance_programs_pid_active_balance_get**
> BalanceLimit loyalty_balance_programs_pid_active_balance_get(pid, contact_id, balance_definition_id, opts)

Get Active Balances API

Returns Active Balances

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

contact_id = 56 # Integer | Contact ID

balance_definition_id = 'balance_definition_id_example' # String | Balance Definition ID

opts = { 
  limit: 56, # Integer | Limit
  offset: 56, # Integer | Offset
  sort_field: 'sort_field_example', # String | Sort Field
  sort: 'sort_example' # String | Sort Order
}

begin
  #Get Active Balances API
  result = api_instance.loyalty_balance_programs_pid_active_balance_get(pid, contact_id, balance_definition_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->loyalty_balance_programs_pid_active_balance_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **contact_id** | **Integer**| Contact ID | 
 **balance_definition_id** | [**String**](.md)| Balance Definition ID | 
 **limit** | **Integer**| Limit | [optional] 
 **offset** | **Integer**| Offset | [optional] 
 **sort_field** | **String**| Sort Field | [optional] 
 **sort** | **String**| Sort Order | [optional] 

### Return type

[**BalanceLimit**](BalanceLimit.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_balance_programs_pid_balance_definitions_post**
> BalanceDefinition loyalty_balance_programs_pid_balance_definitions_post(pid, body)

Create balance definition

Creates balance definition and returns information

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

body = Brevo::CreateBalanceDefinitionPayload.new # CreateBalanceDefinitionPayload | Create Balance Definition Payload


begin
  #Create balance definition
  result = api_instance.loyalty_balance_programs_pid_balance_definitions_post(pid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->loyalty_balance_programs_pid_balance_definitions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **body** | [**CreateBalanceDefinitionPayload**](CreateBalanceDefinitionPayload.md)| Create Balance Definition Payload | 

### Return type

[**BalanceDefinition**](BalanceDefinition.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_balance_programs_pid_subscriptions_cid_balances_post**
> Balance loyalty_balance_programs_pid_subscriptions_cid_balances_post(pid, cid, body)

Create subscription balances

Creates a balance for a contact

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

cid = 'cid_example' # String | Contact Id

body = Brevo::CreateBalancePayload.new # CreateBalancePayload | Create Balnce Payload


begin
  #Create subscription balances
  result = api_instance.loyalty_balance_programs_pid_subscriptions_cid_balances_post(pid, cid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->loyalty_balance_programs_pid_subscriptions_cid_balances_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **cid** | **String**| Contact Id | 
 **body** | [**CreateBalancePayload**](CreateBalancePayload.md)| Create Balnce Payload | 

### Return type

[**Balance**](Balance.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **loyalty_balance_programs_pid_transaction_history_get**
> TransactionHistoryResp loyalty_balance_programs_pid_transaction_history_get(pid, contact_id, balance_definition_id, opts)

Get Transaction History API

Returns transaction history

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

contact_id = 0 # Integer | Contact ID

balance_definition_id = 'balance_definition_id_example' # String | Balance Definition ID

opts = { 
  limit: 20, # Integer | Limit the number of records returned
  offset: 0, # Integer | Skip a number of records
  sort_field: 'created_at', # String | Field to sort by
  sort: 'desc', # String | Sort order, either asc or desc
  filters: ['filters_example'] # Array<String> | Filters to apply
}

begin
  #Get Transaction History API
  result = api_instance.loyalty_balance_programs_pid_transaction_history_get(pid, contact_id, balance_definition_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->loyalty_balance_programs_pid_transaction_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **contact_id** | **Integer**| Contact ID | [default to 0]
 **balance_definition_id** | [**String**](.md)| Balance Definition ID | 
 **limit** | **Integer**| Limit the number of records returned | [optional] [default to 20]
 **offset** | **Integer**| Skip a number of records | [optional] [default to 0]
 **sort_field** | **String**| Field to sort by | [optional] [default to created_at]
 **sort** | **String**| Sort order, either asc or desc | [optional] [default to desc]
 **filters** | [**Array&lt;String&gt;**](String.md)| Filters to apply | [optional] 

### Return type

[**TransactionHistoryResp**](TransactionHistoryResp.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_balance_definition**
> BalanceDefinition update_balance_definition(pid, bdid, body)

Update balance definition

Updates Balance definition

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

body = Brevo::UpdateBalanceDefinitionPayload.new # UpdateBalanceDefinitionPayload | Update Balance Definition Payload


begin
  #Update balance definition
  result = api_instance.update_balance_definition(pid, bdid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->update_balance_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **body** | [**UpdateBalanceDefinitionPayload**](UpdateBalanceDefinitionPayload.md)| Update Balance Definition Payload | 

### Return type

[**BalanceDefinition**](BalanceDefinition.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_balance_limit**
> BalanceLimit update_balance_limit(pid, bdid, blid, body)

Updates balance limit

Updates balance limit

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

api_instance = Brevo::BalanceApi.new

pid = 'pid_example' # String | Loyalty Program Id

bdid = 'bdid_example' # String | Balance Definition Id

blid = 'blid_example' # String | Balance Limit Id

body = Brevo::UpdateBalanceLimitPayload.new # UpdateBalanceLimitPayload | Balance Limits Payload


begin
  #Updates balance limit
  result = api_instance.update_balance_limit(pid, bdid, blid, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling BalanceApi->update_balance_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | [**String**](.md)| Loyalty Program Id | 
 **bdid** | [**String**](.md)| Balance Definition Id | 
 **blid** | [**String**](.md)| Balance Limit Id | 
 **body** | [**UpdateBalanceLimitPayload**](UpdateBalanceLimitPayload.md)| Balance Limits Payload | 

### Return type

[**BalanceLimit**](BalanceLimit.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



