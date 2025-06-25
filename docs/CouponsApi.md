# Brevo::CouponsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_collection**](CouponsApi.md#create_coupon_collection) | **POST** /couponCollections | Create а coupon collection
[**create_coupons**](CouponsApi.md#create_coupons) | **POST** /coupons | Create coupons for a coupon collection
[**get_coupon_collection**](CouponsApi.md#get_coupon_collection) | **GET** /couponCollections/{id} | Get a coupon collection by id
[**get_coupon_collections**](CouponsApi.md#get_coupon_collections) | **GET** /couponCollections | Get all your coupon collections
[**update_coupon_collection**](CouponsApi.md#update_coupon_collection) | **PATCH** /couponCollections/{id} | Update a coupon collection by id


# **create_coupon_collection**
> InlineResponse2013 create_coupon_collection(create_coupon_collection)

Create а coupon collection

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

api_instance = Brevo::CouponsApi.new

create_coupon_collection = Brevo::CreateCouponCollection.new # CreateCouponCollection | Values to create a coupon collection


begin
  #Create а coupon collection
  result = api_instance.create_coupon_collection(create_coupon_collection)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CouponsApi->create_coupon_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_coupon_collection** | [**CreateCouponCollection**](CreateCouponCollection.md)| Values to create a coupon collection | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_coupons**
> create_coupons(create_coupons)

Create coupons for a coupon collection

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

api_instance = Brevo::CouponsApi.new

create_coupons = Brevo::CreateCoupons.new # CreateCoupons | Values to create coupons


begin
  #Create coupons for a coupon collection
  api_instance.create_coupons(create_coupons)
rescue Brevo::ApiError => e
  puts "Exception when calling CouponsApi->create_coupons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_coupons** | [**CreateCoupons**](CreateCoupons.md)| Values to create coupons | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_coupon_collection**
> GetCouponCollection get_coupon_collection(id)

Get a coupon collection by id

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

api_instance = Brevo::CouponsApi.new

id = 'id_example' # String | Id of the collection to return


begin
  #Get a coupon collection by id
  result = api_instance.get_coupon_collection(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CouponsApi->get_coupon_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the collection to return | 

### Return type

[**GetCouponCollection**](GetCouponCollection.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_coupon_collections**
> GetCouponCollection get_coupon_collections(opts)

Get all your coupon collections

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

api_instance = Brevo::CouponsApi.new

opts = { 
  limit: 50, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document on the page
  sort: 'desc', # String | Sort the results by creation time in ascending/descending order
  sort_by: 'createdAt' # String | The field used to sort coupon collections
}

begin
  #Get all your coupon collections
  result = api_instance.get_coupon_collections(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CouponsApi->get_coupon_collections: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]
 **sort** | **String**| Sort the results by creation time in ascending/descending order | [optional] [default to desc]
 **sort_by** | **String**| The field used to sort coupon collections | [optional] [default to createdAt]

### Return type

[**GetCouponCollection**](GetCouponCollection.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_coupon_collection**
> InlineResponse2009 update_coupon_collection(id, opts)

Update a coupon collection by id

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

api_instance = Brevo::CouponsApi.new

id = 'id_example' # String | Id of the collection to update

opts = { 
  update_coupon_collection: Brevo::UpdateCouponCollection.new # UpdateCouponCollection | Values to update the coupon collection
}

begin
  #Update a coupon collection by id
  result = api_instance.update_coupon_collection(id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CouponsApi->update_coupon_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the collection to update | 
 **update_coupon_collection** | [**UpdateCouponCollection**](UpdateCouponCollection.md)| Values to update the coupon collection | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



