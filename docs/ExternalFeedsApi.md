# BrevoRuby::ExternalFeedsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_external_feed**](ExternalFeedsApi.md#create_external_feed) | **POST** /feeds | Create an external feed
[**delete_external_feed**](ExternalFeedsApi.md#delete_external_feed) | **DELETE** /feeds/{uuid} | Delete an external feed
[**get_all_external_feeds**](ExternalFeedsApi.md#get_all_external_feeds) | **GET** /feeds | Fetch all external feeds
[**get_external_feed_by_uuid**](ExternalFeedsApi.md#get_external_feed_by_uuid) | **GET** /feeds/{uuid} | Get an external feed by UUID
[**update_external_feed**](ExternalFeedsApi.md#update_external_feed) | **PUT** /feeds/{uuid} | Update an external feed


# **create_external_feed**
> InlineResponse2014 create_external_feed(create_external_feed)

Create an external feed

This endpoint will create an external feed.

### Example
```ruby
# load the gem
require 'brevo-ruby'
# setup authorization
BrevoRuby.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = BrevoRuby::ExternalFeedsApi.new

create_external_feed = BrevoRuby::CreateExternalFeed.new # CreateExternalFeed | Values to create a feed


begin
  #Create an external feed
  result = api_instance.create_external_feed(create_external_feed)
  p result
rescue BrevoRuby::ApiError => e
  puts "Exception when calling ExternalFeedsApi->create_external_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_external_feed** | [**CreateExternalFeed**](CreateExternalFeed.md)| Values to create a feed | 

### Return type

[**InlineResponse2014**](InlineResponse2014.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_external_feed**
> delete_external_feed(uuid)

Delete an external feed

This endpoint will delete an external feed.

### Example
```ruby
# load the gem
require 'brevo-ruby'
# setup authorization
BrevoRuby.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = BrevoRuby::ExternalFeedsApi.new

uuid = 'uuid_example' # String | UUID of the feed to delete


begin
  #Delete an external feed
  api_instance.delete_external_feed(uuid)
rescue BrevoRuby::ApiError => e
  puts "Exception when calling ExternalFeedsApi->delete_external_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the feed to delete | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_external_feeds**
> GetAllExternalFeeds get_all_external_feeds(opts)

Fetch all external feeds

This endpoint can fetch all created external feeds.

### Example
```ruby
# load the gem
require 'brevo-ruby'
# setup authorization
BrevoRuby.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = BrevoRuby::ExternalFeedsApi.new

opts = { 
  search: 'search_example', # String | Can be used to filter records by search keyword on feed name
  start_date: Date.parse('2013-10-20'), # Date | Mandatory if `endDate` is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date.
  end_date: Date.parse('2013-10-20'), # Date | Mandatory if `startDate` is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed.
  auth_type: 'auth_type_example', # String | Filter the records by `authType` of the feed.
  limit: 50, # Integer | Number of documents returned per page.
  offset: 0 # Integer | Index of the first document on the page.
}

begin
  #Fetch all external feeds
  result = api_instance.get_all_external_feeds(opts)
  p result
rescue BrevoRuby::ApiError => e
  puts "Exception when calling ExternalFeedsApi->get_all_external_feeds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Can be used to filter records by search keyword on feed name | [optional] 
 **start_date** | **Date**| Mandatory if &#x60;endDate&#x60; is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date. | [optional] 
 **end_date** | **Date**| Mandatory if &#x60;startDate&#x60; is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed. | [optional] [default to desc]
 **auth_type** | **String**| Filter the records by &#x60;authType&#x60; of the feed. | [optional] 
 **limit** | **Integer**| Number of documents returned per page. | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document on the page. | [optional] [default to 0]

### Return type

[**GetAllExternalFeeds**](GetAllExternalFeeds.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_external_feed_by_uuid**
> GetExternalFeedByUUID get_external_feed_by_uuid(uuid)

Get an external feed by UUID

This endpoint will update an external feed.

### Example
```ruby
# load the gem
require 'brevo-ruby'
# setup authorization
BrevoRuby.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = BrevoRuby::ExternalFeedsApi.new

uuid = 'uuid_example' # String | UUID of the feed to fetch


begin
  #Get an external feed by UUID
  result = api_instance.get_external_feed_by_uuid(uuid)
  p result
rescue BrevoRuby::ApiError => e
  puts "Exception when calling ExternalFeedsApi->get_external_feed_by_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the feed to fetch | 

### Return type

[**GetExternalFeedByUUID**](GetExternalFeedByUUID.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_external_feed**
> update_external_feed(uuid, update_external_feed)

Update an external feed

This endpoint will update an external feed.

### Example
```ruby
# load the gem
require 'brevo-ruby'
# setup authorization
BrevoRuby.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = BrevoRuby::ExternalFeedsApi.new

uuid = 'uuid_example' # String | UUID of the feed to update

update_external_feed = BrevoRuby::UpdateExternalFeed.new # UpdateExternalFeed | Values to update a feed


begin
  #Update an external feed
  api_instance.update_external_feed(uuid, update_external_feed)
rescue BrevoRuby::ApiError => e
  puts "Exception when calling ExternalFeedsApi->update_external_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the feed to update | 
 **update_external_feed** | [**UpdateExternalFeed**](UpdateExternalFeed.md)| Values to update a feed | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



