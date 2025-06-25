# Brevo::PaymentsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_request**](PaymentsApi.md#create_payment_request) | **POST** /payments/requests | Create a payment request
[**delete_payment_request**](PaymentsApi.md#delete_payment_request) | **DELETE** /payments/requests/{id} | Delete a payment request.
[**get_payment_request**](PaymentsApi.md#get_payment_request) | **GET** /payments/requests/{id} | Get payment request details


# **create_payment_request**
> CreatePaymentResponse create_payment_request(create_payment_rquest)

Create a payment request

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

api_instance = Brevo::PaymentsApi.new

create_payment_rquest = Brevo::CreatePaymentRequest.new # CreatePaymentRequest | Create a payment request 


begin
  #Create a payment request
  result = api_instance.create_payment_request(create_payment_rquest)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payment_rquest** | [**CreatePaymentRequest**](CreatePaymentRequest.md)| Create a payment request  | 

### Return type

[**CreatePaymentResponse**](CreatePaymentResponse.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_payment_request**
> delete_payment_request(id)

Delete a payment request.

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

api_instance = Brevo::PaymentsApi.new

id = 'id_example' # String | ID of the payment request.


begin
  #Delete a payment request.
  api_instance.delete_payment_request(id)
rescue Brevo::ApiError => e
  puts "Exception when calling PaymentsApi->delete_payment_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the payment request. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payment_request**
> GetPaymentRequest get_payment_request(id)

Get payment request details

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

api_instance = Brevo::PaymentsApi.new

id = 'id_example' # String | Id of the payment Request


begin
  #Get payment request details
  result = api_instance.get_payment_request(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the payment Request | 

### Return type

[**GetPaymentRequest**](GetPaymentRequest.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



