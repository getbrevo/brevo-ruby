# Brevo::CompaniesApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**companies_get**](CompaniesApi.md#companies_get) | **GET** /companies | Get all companies
[**companies_id_delete**](CompaniesApi.md#companies_id_delete) | **DELETE** /companies/{id} | Delete a company
[**companies_id_get**](CompaniesApi.md#companies_id_get) | **GET** /companies/{id} | Get a company
[**companies_id_patch**](CompaniesApi.md#companies_id_patch) | **PATCH** /companies/{id} | Update a company
[**companies_import_post**](CompaniesApi.md#companies_import_post) | **POST** /companies/import | Import companies(creation and updation)
[**companies_link_unlink_id_patch**](CompaniesApi.md#companies_link_unlink_id_patch) | **PATCH** /companies/link-unlink/{id} | Link and Unlink company with contacts and deals
[**companies_post**](CompaniesApi.md#companies_post) | **POST** /companies | Create a company
[**crm_attributes_companies_get**](CompaniesApi.md#crm_attributes_companies_get) | **GET** /crm/attributes/companies | Get company attributes
[**crm_attributes_post**](CompaniesApi.md#crm_attributes_post) | **POST** /crm/attributes | Create a deal/company attribute


# **companies_get**
> CompaniesList companies_get(opts)

Get all companies

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

api_instance = Brevo::CompaniesApi.new

opts = { 
  filters: 'filters_example', # String | Filter by attrbutes. If you have filter for owner on your side please send it as {\"attributes.owner\":\"5b1a17d914b73d35a76ca0c7\"}
  linked_contacts_ids: 789, # Integer | Filter by linked contacts ids
  linked_deals_ids: 'linked_deals_ids_example', # String | Filter by linked deals ids
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  created_since: 'created_since_example', # String | Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  page: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  #Get all companies
  result = api_instance.companies_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| Filter by attrbutes. If you have filter for owner on your side please send it as {\&quot;attributes.owner\&quot;:\&quot;5b1a17d914b73d35a76ca0c7\&quot;} | [optional] 
 **linked_contacts_ids** | **Integer**| Filter by linked contacts ids | [optional] 
 **linked_deals_ids** | **String**| Filter by linked deals ids | [optional] 
 **modified_since** | **String**| Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **created_since** | **String**| Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **page** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 
 **sort_by** | **String**| The field used to sort field names. | [optional] 

### Return type

[**CompaniesList**](CompaniesList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_id_delete**
> companies_id_delete(id)

Delete a company

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

api_instance = Brevo::CompaniesApi.new

id = 'id_example' # String | 


begin
  #Delete a company
  api_instance.companies_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_delete: #{e}"
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



# **companies_id_get**
> Company companies_id_get(id)

Get a company

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

api_instance = Brevo::CompaniesApi.new

id = 'id_example' # String | 


begin
  #Get a company
  result = api_instance.companies_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_id_patch**
> Company companies_id_patch(id, body)

Update a company

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

api_instance = Brevo::CompaniesApi.new

id = 'id_example' # String | 

body = Brevo::Body7.new # Body7 | Updated company details.


begin
  #Update a company
  result = api_instance.companies_id_patch(id, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body7**](Body7.md)| Updated company details. | 

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_import_post**
> InlineResponse2004 companies_import_post(file, mapping)

Import companies(creation and updation)

Import companies from a CSV file with mapping options.

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

api_instance = Brevo::CompaniesApi.new

file = File.new('/path/to/file.txt') # File | The CSV file to upload.The file should have the first row as the mapping attribute. Some default attribute names are (a) company_id [brevo mongoID to update deals] (b) associated_contact (c) associated_deal (f) any other attribute with internal name 

mapping = 'mapping_example' # String | The mapping options in JSON format.   json    {       \"link_entities\": true, // Determines whether to link related entities during the import process       \"unlink_entities\": false, //Determines whether to unlink related entities during the import process.       \"update_existing_records\": true, // Determines whether to update based on company ID or treat every row as create       \"unset_empty_attributes\": false // Determines whether unset a specific attribute during update if values input is blank       \"use_company_identifier\": false // Determines whether to use company name as identifier     } 


begin
  #Import companies(creation and updation)
  result = api_instance.companies_import_post(file, mapping)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_import_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The CSV file to upload.The file should have the first row as the mapping attribute. Some default attribute names are (a) company_id [brevo mongoID to update deals] (b) associated_contact (c) associated_deal (f) any other attribute with internal name  | 
 **mapping** | **String**| The mapping options in JSON format.   json    {       \&quot;link_entities\&quot;: true, // Determines whether to link related entities during the import process       \&quot;unlink_entities\&quot;: false, //Determines whether to unlink related entities during the import process.       \&quot;update_existing_records\&quot;: true, // Determines whether to update based on company ID or treat every row as create       \&quot;unset_empty_attributes\&quot;: false // Determines whether unset a specific attribute during update if values input is blank       \&quot;use_company_identifier\&quot;: false // Determines whether to use company name as identifier     }  | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **companies_link_unlink_id_patch**
> companies_link_unlink_id_patch(id, body)

Link and Unlink company with contacts and deals

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

api_instance = Brevo::CompaniesApi.new

id = 'id_example' # String | 

body = Brevo::Body8.new # Body8 | Linked / Unlinked contacts and deals ids.


begin
  #Link and Unlink company with contacts and deals
  api_instance.companies_link_unlink_id_patch(id, body)
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_link_unlink_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body8**](Body8.md)| Linked / Unlinked contacts and deals ids. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_post**
> InlineResponse2002 companies_post(body)

Create a company

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

api_instance = Brevo::CompaniesApi.new

body = Brevo::Body6.new # Body6 | Company create data.


begin
  #Create a company
  result = api_instance.companies_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->companies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body6**](Body6.md)| Company create data. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_attributes_companies_get**
> CompanyAttributes crm_attributes_companies_get

Get company attributes

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

api_instance = Brevo::CompaniesApi.new

begin
  #Get company attributes
  result = api_instance.crm_attributes_companies_get
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->crm_attributes_companies_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyAttributes**](CompanyAttributes.md)

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

api_instance = Brevo::CompaniesApi.new

body = Brevo::Body9.new # Body9 | Attribute creation data for company


begin
  #Create a deal/company attribute
  result = api_instance.crm_attributes_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling CompaniesApi->crm_attributes_post: #{e}"
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



