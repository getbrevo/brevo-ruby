# Brevo::EcommerceApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_batch_order**](EcommerceApi.md#create_batch_order) | **POST** /orders/status/batch | Create orders in batch
[**create_order**](EcommerceApi.md#create_order) | **POST** /orders/status | Managing the status of the order
[**create_update_batch_category**](EcommerceApi.md#create_update_batch_category) | **POST** /categories/batch | Create categories in batch
[**create_update_batch_products**](EcommerceApi.md#create_update_batch_products) | **POST** /products/batch | Create products in batch
[**create_update_category**](EcommerceApi.md#create_update_category) | **POST** /categories | Create/Update a category
[**create_update_product**](EcommerceApi.md#create_update_product) | **POST** /products | Create/Update a product
[**ecommerce_activate_post**](EcommerceApi.md#ecommerce_activate_post) | **POST** /ecommerce/activate | Activate the eCommerce app
[**ecommerce_attribution_metrics_conversion_source_conversion_source_id_get**](EcommerceApi.md#ecommerce_attribution_metrics_conversion_source_conversion_source_id_get) | **GET** /ecommerce/attribution/metrics/{conversionSource}/{conversionSourceId} | Get detailed attribution metrics for a single Brevo campaign
[**ecommerce_attribution_metrics_get**](EcommerceApi.md#ecommerce_attribution_metrics_get) | **GET** /ecommerce/attribution/metrics | Get attribution metrics for one or more Brevo campaigns
[**ecommerce_attribution_products_conversion_source_conversion_source_id_get**](EcommerceApi.md#ecommerce_attribution_products_conversion_source_conversion_source_id_get) | **GET** /ecommerce/attribution/products/{conversionSource}/{conversionSourceId} | Get attributed product sales for a single Brevo campaign
[**get_categories**](EcommerceApi.md#get_categories) | **GET** /categories | Return all your categories
[**get_category_info**](EcommerceApi.md#get_category_info) | **GET** /categories/{id} | Get a category details
[**get_orders**](EcommerceApi.md#get_orders) | **GET** /orders | Get order details
[**get_product_info**](EcommerceApi.md#get_product_info) | **GET** /products/{id} | Get a product&#39;s details
[**get_products**](EcommerceApi.md#get_products) | **GET** /products | Return all your products


# **create_batch_order**
> create_batch_order(order_batch)

Create orders in batch

Create multiple orders at one time instead of one order at a time

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

api_instance = Brevo::EcommerceApi.new

order_batch = Brevo::OrderBatch.new # OrderBatch | 


begin
  #Create orders in batch
  api_instance.create_batch_order(order_batch)
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_batch_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_batch** | [**OrderBatch**](OrderBatch.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_order**
> create_order(order)

Managing the status of the order

Manages the transactional status of the order

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

api_instance = Brevo::EcommerceApi.new

order = Brevo::Order.new # Order | 


begin
  #Managing the status of the order
  api_instance.create_order(order)
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**Order**](Order.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_update_batch_category**
> CreateUpdateBatchCategoryModel create_update_batch_category(create_update_batch_category)

Create categories in batch

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

api_instance = Brevo::EcommerceApi.new

create_update_batch_category = Brevo::CreateUpdateBatchCategory.new # CreateUpdateBatchCategory | Values to create a batch of categories


begin
  #Create categories in batch
  result = api_instance.create_update_batch_category(create_update_batch_category)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_update_batch_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_update_batch_category** | [**CreateUpdateBatchCategory**](CreateUpdateBatchCategory.md)| Values to create a batch of categories | 

### Return type

[**CreateUpdateBatchCategoryModel**](CreateUpdateBatchCategoryModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_update_batch_products**
> CreateUpdateBatchProductsModel create_update_batch_products(create_update_batch_products)

Create products in batch

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

api_instance = Brevo::EcommerceApi.new

create_update_batch_products = Brevo::CreateUpdateBatchProducts.new # CreateUpdateBatchProducts | Values to create a batch of products


begin
  #Create products in batch
  result = api_instance.create_update_batch_products(create_update_batch_products)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_update_batch_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_update_batch_products** | [**CreateUpdateBatchProducts**](CreateUpdateBatchProducts.md)| Values to create a batch of products | 

### Return type

[**CreateUpdateBatchProductsModel**](CreateUpdateBatchProductsModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_update_category**
> CreateCategoryModel create_update_category(create_update_category)

Create/Update a category

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

api_instance = Brevo::EcommerceApi.new

create_update_category = Brevo::CreateUpdateCategory.new # CreateUpdateCategory | Values to create/update a category


begin
  #Create/Update a category
  result = api_instance.create_update_category(create_update_category)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_update_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_update_category** | [**CreateUpdateCategory**](CreateUpdateCategory.md)| Values to create/update a category | 

### Return type

[**CreateCategoryModel**](CreateCategoryModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_update_product**
> CreateProductModel create_update_product(create_update_product)

Create/Update a product

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

api_instance = Brevo::EcommerceApi.new

create_update_product = Brevo::CreateUpdateProduct.new # CreateUpdateProduct | Values to create/update a product


begin
  #Create/Update a product
  result = api_instance.create_update_product(create_update_product)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->create_update_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_update_product** | [**CreateUpdateProduct**](CreateUpdateProduct.md)| Values to create/update a product | 

### Return type

[**CreateProductModel**](CreateProductModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ecommerce_activate_post**
> ecommerce_activate_post

Activate the eCommerce app

Getting access to Brevo eCommerce.

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

api_instance = Brevo::EcommerceApi.new

begin
  #Activate the eCommerce app
  api_instance.ecommerce_activate_post
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->ecommerce_activate_post: #{e}"
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



# **ecommerce_attribution_metrics_conversion_source_conversion_source_id_get**
> ecommerce_attribution_metrics_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)

Get detailed attribution metrics for a single Brevo campaign

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

api_instance = Brevo::EcommerceApi.new

conversion_source = nil # Object | The Brevo campaign type for which data will be retrieved

conversion_source_id = nil # Object | The Brevo campaign id for which data will be retrieved


begin
  #Get detailed attribution metrics for a single Brevo campaign
  api_instance.ecommerce_attribution_metrics_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->ecommerce_attribution_metrics_conversion_source_conversion_source_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversion_source** | [**Object**](.md)| The Brevo campaign type for which data will be retrieved | 
 **conversion_source_id** | [**Object**](.md)| The Brevo campaign id for which data will be retrieved | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ecommerce_attribution_metrics_get**
> ecommerce_attribution_metrics_get(opts)

Get attribution metrics for one or more Brevo campaigns

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

api_instance = Brevo::EcommerceApi.new

opts = { 
  period_from: nil, # Object | When getting metrics for a specific period, define the starting datetime in RFC3339 format
  period_to: nil, # Object | When getting metrics for a specific period, define the end datetime in RFC3339 format
  email_campaign_id: nil # Object | The email campaign id(s) to get metrics for
}

begin
  #Get attribution metrics for one or more Brevo campaigns
  api_instance.ecommerce_attribution_metrics_get(opts)
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->ecommerce_attribution_metrics_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period_from** | [**Object**](.md)| When getting metrics for a specific period, define the starting datetime in RFC3339 format | [optional] 
 **period_to** | [**Object**](.md)| When getting metrics for a specific period, define the end datetime in RFC3339 format | [optional] 
 **email_campaign_id** | [**Object**](.md)| The email campaign id(s) to get metrics for | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ecommerce_attribution_products_conversion_source_conversion_source_id_get**
> ecommerce_attribution_products_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)

Get attributed product sales for a single Brevo campaign

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

api_instance = Brevo::EcommerceApi.new

conversion_source = nil # Object | The Brevo campaign type for which data will be retrieved

conversion_source_id = nil # Object | The Brevo campaign id for which data will be retrieved


begin
  #Get attributed product sales for a single Brevo campaign
  api_instance.ecommerce_attribution_products_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->ecommerce_attribution_products_conversion_source_conversion_source_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversion_source** | [**Object**](.md)| The Brevo campaign type for which data will be retrieved | 
 **conversion_source_id** | [**Object**](.md)| The Brevo campaign id for which data will be retrieved | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_categories**
> GetCategories get_categories(opts)

Return all your categories

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

api_instance = Brevo::EcommerceApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  ids: ['ids_example'], # Array<String> | Filter by category ids
  name: 'name_example', # String | Filter by category name
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the categories modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**         
  created_since: 'created_since_example' # String | Filter (urlencoded) the categories created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**         
}

begin
  #Return all your categories
  result = api_instance.get_categories(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **ids** | [**Array&lt;String&gt;**](String.md)| Filter by category ids | [optional] 
 **name** | **String**| Filter by category name | [optional] 
 **modified_since** | **String**| Filter (urlencoded) the categories modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**          | [optional] 
 **created_since** | **String**| Filter (urlencoded) the categories created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**          | [optional] 

### Return type

[**GetCategories**](GetCategories.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_category_info**
> GetCategoryDetails get_category_info(id)

Get a category details

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

api_instance = Brevo::EcommerceApi.new

id = 'id_example' # String | Category ID


begin
  #Get a category details
  result = api_instance.get_category_info(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->get_category_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Category ID | 

### Return type

[**GetCategoryDetails**](GetCategoryDetails.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_orders**
> GetOrders get_orders(opts)

Get order details

Get all the orders

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

api_instance = Brevo::EcommerceApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  created_since: 'created_since_example' # String | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
}

begin
  #Get order details
  result = api_instance.get_orders(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **modified_since** | **String**| Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] 
 **created_since** | **String**| Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] 

### Return type

[**GetOrders**](GetOrders.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product_info**
> GetProductDetails get_product_info(id)

Get a product's details

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

api_instance = Brevo::EcommerceApi.new

id = 'id_example' # String | Product ID


begin
  #Get a product's details
  result = api_instance.get_product_info(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->get_product_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Product ID | 

### Return type

[**GetProductDetails**](GetProductDetails.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_products**
> GetProducts get_products(opts)

Return all your products

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

api_instance = Brevo::EcommerceApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  ids: ['ids_example'], # Array<String> | Filter by product ids
  name: 'name_example', # String | Filter by product name, minimum 3 characters should be present for search
  price_lte: 8.14, # Float | Price filter for products less than and equals to particular amount
  price_gte: 8.14, # Float | Price filter for products greater than and equals to particular amount
  price_lt: 8.14, # Float | Price filter for products less than particular amount
  price_gt: 8.14, # Float | Price filter for products greater than particular amount
  price_eq: 8.14, # Float | Price filter for products equals to particular amount
  price_ne: 8.14, # Float | Price filter for products not equals to particular amount
  categories: ['categories_example'], # Array<String> | Filter by category ids
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  created_since: 'created_since_example' # String | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
}

begin
  #Return all your products
  result = api_instance.get_products(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling EcommerceApi->get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **ids** | [**Array&lt;String&gt;**](String.md)| Filter by product ids | [optional] 
 **name** | **String**| Filter by product name, minimum 3 characters should be present for search | [optional] 
 **price_lte** | **Float**| Price filter for products less than and equals to particular amount | [optional] 
 **price_gte** | **Float**| Price filter for products greater than and equals to particular amount | [optional] 
 **price_lt** | **Float**| Price filter for products less than particular amount | [optional] 
 **price_gt** | **Float**| Price filter for products greater than particular amount | [optional] 
 **price_eq** | **Float**| Price filter for products equals to particular amount | [optional] 
 **price_ne** | **Float**| Price filter for products not equals to particular amount | [optional] 
 **categories** | [**Array&lt;String&gt;**](String.md)| Filter by category ids | [optional] 
 **modified_since** | **String**| Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] 
 **created_since** | **String**| Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] 

### Return type

[**GetProducts**](GetProducts.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



