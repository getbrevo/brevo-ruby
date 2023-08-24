# Brevo::DomainsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_domain**](DomainsApi.md#authenticate_domain) | **PUT** /senders/domains/{domainName}/authenticate | Authenticate a domain
[**create_domain**](DomainsApi.md#create_domain) | **POST** /senders/domains | Create a new domain
[**delete_domain**](DomainsApi.md#delete_domain) | **DELETE** /senders/domains/{domainName} | Delete a domain
[**get_domain_configuration**](DomainsApi.md#get_domain_configuration) | **GET** /senders/domains/{domainName} | Validate domain configuration
[**get_domains**](DomainsApi.md#get_domains) | **GET** /senders/domains | Get the list of all your domains


# **authenticate_domain**
> AuthenticateDomainModel authenticate_domain(domain_name)

Authenticate a domain

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

api_instance = Brevo::DomainsApi.new

domain_name = 'domain_name_example' # String | Domain name


begin
  #Authenticate a domain
  result = api_instance.authenticate_domain(domain_name)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DomainsApi->authenticate_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_name** | **String**| Domain name | 

### Return type

[**AuthenticateDomainModel**](AuthenticateDomainModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_domain**
> CreateDomainModel create_domain(opts)

Create a new domain

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

api_instance = Brevo::DomainsApi.new

opts = { 
  domain_name: Brevo::CreateDomain.new # CreateDomain | domain's name
}

begin
  #Create a new domain
  result = api_instance.create_domain(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DomainsApi->create_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_name** | [**CreateDomain**](CreateDomain.md)| domain&#39;s name | [optional] 

### Return type

[**CreateDomainModel**](CreateDomainModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_domain**
> delete_domain(domain_name)

Delete a domain

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

api_instance = Brevo::DomainsApi.new

domain_name = 'domain_name_example' # String | Domain name


begin
  #Delete a domain
  api_instance.delete_domain(domain_name)
rescue Brevo::ApiError => e
  puts "Exception when calling DomainsApi->delete_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_name** | **String**| Domain name | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_domain_configuration**
> GetDomainConfigurationModel get_domain_configuration(domain_name)

Validate domain configuration

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

api_instance = Brevo::DomainsApi.new

domain_name = 'domain_name_example' # String | Domain name


begin
  #Validate domain configuration
  result = api_instance.get_domain_configuration(domain_name)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DomainsApi->get_domain_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_name** | **String**| Domain name | 

### Return type

[**GetDomainConfigurationModel**](GetDomainConfigurationModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_domains**
> GetDomainsList get_domains

Get the list of all your domains

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

api_instance = Brevo::DomainsApi.new

begin
  #Get the list of all your domains
  result = api_instance.get_domains
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DomainsApi->get_domains: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDomainsList**](GetDomainsList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



