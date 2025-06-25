# Brevo::ConversationsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversations_agent_online_ping_post**](ConversationsApi.md#conversations_agent_online_ping_post) | **POST** /conversations/agentOnlinePing | Sets agent’s status to online for 2-3 minutes
[**conversations_messages_id_delete**](ConversationsApi.md#conversations_messages_id_delete) | **DELETE** /conversations/messages/{id} | Delete a message sent by an agent
[**conversations_messages_id_get**](ConversationsApi.md#conversations_messages_id_get) | **GET** /conversations/messages/{id} | Get a message
[**conversations_messages_id_put**](ConversationsApi.md#conversations_messages_id_put) | **PUT** /conversations/messages/{id} | Update a message sent by an agent
[**conversations_messages_post**](ConversationsApi.md#conversations_messages_post) | **POST** /conversations/messages | Send a message as an agent
[**conversations_pushed_messages_id_delete**](ConversationsApi.md#conversations_pushed_messages_id_delete) | **DELETE** /conversations/pushedMessages/{id} | Delete an automated message
[**conversations_pushed_messages_id_get**](ConversationsApi.md#conversations_pushed_messages_id_get) | **GET** /conversations/pushedMessages/{id} | Get an automated message
[**conversations_pushed_messages_id_put**](ConversationsApi.md#conversations_pushed_messages_id_put) | **PUT** /conversations/pushedMessages/{id} | Update an automated message
[**conversations_pushed_messages_post**](ConversationsApi.md#conversations_pushed_messages_post) | **POST** /conversations/pushedMessages | Send an automated message to a visitor


# **conversations_agent_online_ping_post**
> conversations_agent_online_ping_post(body)

Sets agent’s status to online for 2-3 minutes

We recommend pinging this endpoint every minute for as long as the agent has to be considered online.

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

api_instance = Brevo::ConversationsApi.new

body = Brevo::Body19.new # Body19 | Agent fields.


begin
  #Sets agent’s status to online for 2-3 minutes
  api_instance.conversations_agent_online_ping_post(body)
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_agent_online_ping_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body19**](Body19.md)| Agent fields. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_messages_id_delete**
> conversations_messages_id_delete(id)

Delete a message sent by an agent

Only agents’ messages can be deleted.

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message


begin
  #Delete a message sent by an agent
  api_instance.conversations_messages_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_messages_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_messages_id_get**
> ConversationsMessage conversations_messages_id_get(id)

Get a message

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message


begin
  #Get a message
  result = api_instance.conversations_messages_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_messages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message | 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_messages_id_put**
> ConversationsMessage conversations_messages_id_put(id, opts)

Update a message sent by an agent

Only agents’ messages can be edited.

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message

opts = { 
  body: Brevo::Body16.new # Body16 | 
}

begin
  #Update a message sent by an agent
  result = api_instance.conversations_messages_id_put(id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_messages_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message | 
 **body** | [**Body16**](Body16.md)|  | [optional] 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_messages_post**
> ConversationsMessage conversations_messages_post(body)

Send a message as an agent

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

api_instance = Brevo::ConversationsApi.new

body = Brevo::Body15.new # Body15 | Message fields.


begin
  #Send a message as an agent
  result = api_instance.conversations_messages_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_messages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body15**](Body15.md)| Message fields. | 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_pushed_messages_id_delete**
> conversations_pushed_messages_id_delete(id)

Delete an automated message

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message


begin
  #Delete an automated message
  api_instance.conversations_pushed_messages_id_delete(id)
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_pushed_messages_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_pushed_messages_id_get**
> ConversationsMessage conversations_pushed_messages_id_get(id)

Get an automated message

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message sent previously


begin
  #Get an automated message
  result = api_instance.conversations_pushed_messages_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_pushed_messages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message sent previously | 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_pushed_messages_id_put**
> ConversationsMessage conversations_pushed_messages_id_put(id, body)

Update an automated message

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

api_instance = Brevo::ConversationsApi.new

id = 'id_example' # String | ID of the message

body = Brevo::Body18.new # Body18 | 


begin
  #Update an automated message
  result = api_instance.conversations_pushed_messages_id_put(id, body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_pushed_messages_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the message | 
 **body** | [**Body18**](Body18.md)|  | 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **conversations_pushed_messages_post**
> ConversationsMessage conversations_pushed_messages_post(body)

Send an automated message to a visitor

Example of automated messages: order status, announce new features in your web app, etc.

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

api_instance = Brevo::ConversationsApi.new

body = Brevo::Body17.new # Body17 | 


begin
  #Send an automated message to a visitor
  result = api_instance.conversations_pushed_messages_post(body)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_pushed_messages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body17**](Body17.md)|  | 

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



