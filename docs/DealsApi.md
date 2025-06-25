# Brevo::DealsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_attributes_deals_get**](DealsApi.md#crm_attributes_deals_get) | **GET** /crm/attributes/deals | Get deal attributes
[**crm_attributes_post**](DealsApi.md#crm_attributes_post) | **POST** /crm/attributes | Create a deal/company attribute
[**crm_deals_get**](DealsApi.md#crm_deals_get) | **GET** /crm/deals | Get all deals
[**crm_deals_id_delete**](DealsApi.md#crm_deals_id_delete) | **DELETE** /crm/deals/{id} | Delete a deal
[**crm_deals_id_get**](DealsApi.md#crm_deals_id_get) | **GET** /crm/deals/{id} | Get a deal
[**crm_deals_id_patch**](DealsApi.md#crm_deals_id_patch) | **PATCH** /crm/deals/{id} | Update a deal
[**crm_deals_import_post**](DealsApi.md#crm_deals_import_post) | **POST** /crm/deals/import | Import deals(creation and updation)
[**crm_deals_link_unlink_id_patch**](DealsApi.md#crm_deals_link_unlink_id_patch) | **PATCH** /crm/deals/link-unlink/{id} | Link and Unlink a deal with contacts and companies
[**crm_deals_post**](DealsApi.md#crm_deals_post) | **POST** /crm/deals | Create a deal
[**crm_pipeline_details_all_get**](DealsApi.md#crm_pipeline_details_all_get) | **GET** /crm/pipeline/details/all | Get all pipelines
[**crm_pipeline_details_get**](DealsApi.md#crm_pipeline_details_get) | **GET** /crm/pipeline/details | Get pipeline stages
[**crm_pipeline_details_pipeline_id_get**](DealsApi.md#crm_pipeline_details_pipeline_id_get) | **GET** /crm/pipeline/details/{pipelineID} | Get a pipeline


# **crm_attributes_deals_get**
> DealAttributes crm_attributes_deals_get

Get deal attributes

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

api_instance = Brevo::DealsApi.new

begin
  #Get deal attributes
  result = api_instance.crm_attributes_deals_get
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_attributes_deals_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DealAttributes**](DealAttributes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_attributes_post**
> InlineResponse2003 crm_attributes_post(body)

Create a deal/company attribute

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

api_instance = Brevo::DealsApi.new

body = Brevo::Body9.new # Body9 | Attribute creation data for company


begin
  #Create a deal/company attribute
  result = api_instance.crm_attributes_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_attributes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body9**](Body9.md)| Attribute creation data for company | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_get**
> DealsList crm_deals_get(opts)

Get all deals

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

api_instance = Brevo::DealsApi.new

opts = { 
  filters_attributes_deal_name: 'filters_attributes_deal_name_example', # String | Filter by attributes. If you have a filter for the owner on your end, please send it as filters[attributes.deal_owner] and utilize the account email for the filtering.
  filters_linked_companies_ids: 'filters_linked_companies_ids_example', # String | Filter by linked companies ids
  filters_linked_contacts_ids: 'filters_linked_contacts_ids_example', # String | Filter by linked companies ids
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  created_since: 'created_since_example', # String | Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  offset: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  #Get all deals
  result = api_instance.crm_deals_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters_attributes_deal_name** | **String**| Filter by attributes. If you have a filter for the owner on your end, please send it as filters[attributes.deal_owner] and utilize the account email for the filtering. | [optional] 
 **filters_linked_companies_ids** | **String**| Filter by linked companies ids | [optional] 
 **filters_linked_contacts_ids** | **String**| Filter by linked companies ids | [optional] 
 **modified_since** | **String**| Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **created_since** | **String**| Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **offset** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 
 **sort_by** | **String**| The field used to sort field names. | [optional] 

### Return type

[**DealsList**](DealsList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_delete**
> crm_deals_id_delete(id)

Delete a deal

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

api_instance = Brevo::DealsApi.new

id = 'id_example' # String | 


begin
  #Delete a deal
  api_instance.crm_deals_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_get**
> Deal crm_deals_id_get(id)

Get a deal

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

api_instance = Brevo::DealsApi.new

id = 'id_example' # String | 


begin
  #Get a deal
  result = api_instance.crm_deals_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Deal**](Deal.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_patch**
> crm_deals_id_patch(id, body)

Update a deal

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

api_instance = Brevo::DealsApi.new

id = 'id_example' # String | 

body = Brevo::Body11.new # Body11 | Updated deal details.


begin
  #Update a deal
  api_instance.crm_deals_id_patch(id, body)
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body11**](Body11.md)| Updated deal details. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_import_post**
> InlineResponse2004 crm_deals_import_post(file, mapping)

Import deals(creation and updation)

Import deals from a CSV file with mapping options.

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

api_instance = Brevo::DealsApi.new

file = File.new('/path/to/file.txt') # File | The CSV file to upload.The file should have the first row as the mapping attribute. Some default attribute names are (a) deal_id [brevo mongoID to update deals] (b) associated_contact (c) associated_company (f) any other attribute with internal name 

mapping = 'mapping_example' # String | The mapping options in JSON format.   json    {       \"link_entities\": true, // Determines whether to link related entities during the import process       \"unlink_entities\": false, //Determines whether to unlink related entities during the import process.       \"update_existing_records\": true, // Determines whether to update based on deal ID or treat every row as create       \"unset_empty_attributes\": false // Determines whether unset a specific attribute during update if values input is blank     } 


begin
  #Import deals(creation and updation)
  result = api_instance.crm_deals_import_post(file, mapping)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_import_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The CSV file to upload.The file should have the first row as the mapping attribute. Some default attribute names are (a) deal_id [brevo mongoID to update deals] (b) associated_contact (c) associated_company (f) any other attribute with internal name  | 
 **mapping** | **String**| The mapping options in JSON format.   json    {       \&quot;link_entities\&quot;: true, // Determines whether to link related entities during the import process       \&quot;unlink_entities\&quot;: false, //Determines whether to unlink related entities during the import process.       \&quot;update_existing_records\&quot;: true, // Determines whether to update based on deal ID or treat every row as create       \&quot;unset_empty_attributes\&quot;: false // Determines whether unset a specific attribute during update if values input is blank     }  | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **crm_deals_link_unlink_id_patch**
> crm_deals_link_unlink_id_patch(id, body)

Link and Unlink a deal with contacts and companies

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

api_instance = Brevo::DealsApi.new

id = 'id_example' # String | 

body = Brevo::Body12.new # Body12 | Linked / Unlinked contacts and companies ids.


begin
  #Link and Unlink a deal with contacts and companies
  api_instance.crm_deals_link_unlink_id_patch(id, body)
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_link_unlink_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body12**](Body12.md)| Linked / Unlinked contacts and companies ids. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_post**
> InlineResponse2011 crm_deals_post(body)

Create a deal

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

api_instance = Brevo::DealsApi.new

body = Brevo::Body10.new # Body10 | Deal create data.


begin
  #Create a deal
  result = api_instance.crm_deals_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body10**](Body10.md)| Deal create data. | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_pipeline_details_all_get**
> Pipelines crm_pipeline_details_all_get

Get all pipelines

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

api_instance = Brevo::DealsApi.new

begin
  #Get all pipelines
  result = api_instance.crm_pipeline_details_all_get
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_pipeline_details_all_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_pipeline_details_get**
> Pipeline crm_pipeline_details_get

Get pipeline stages

This endpoint is deprecated. Prefer /crm/pipeline/details/{pipelineID} instead.

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

api_instance = Brevo::DealsApi.new

begin
  #Get pipeline stages
  result = api_instance.crm_pipeline_details_get
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_pipeline_details_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_pipeline_details_pipeline_id_get**
> Pipelines crm_pipeline_details_pipeline_id_get(pipeline_id)

Get a pipeline

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

api_instance = Brevo::DealsApi.new

pipeline_id = 'pipeline_id_example' # String | 


begin
  #Get a pipeline
  result = api_instance.crm_pipeline_details_pipeline_id_get(pipeline_id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling DealsApi->crm_pipeline_details_pipeline_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pipeline_id** | **String**|  | 

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



