# Brevo::TransactionalWhatsAppApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_whatsapp_event_report**](TransactionalWhatsAppApi.md#get_whatsapp_event_report) | **GET** /whatsapp/statistics/events | Get all your WhatsApp activity (unaggregated events)
[**send_whatsapp_message**](TransactionalWhatsAppApi.md#send_whatsapp_message) | **POST** /whatsapp/sendMessage | Send a WhatsApp message


# **get_whatsapp_event_report**
> GetWhatsappEventReport get_whatsapp_event_report(opts)

Get all your WhatsApp activity (unaggregated events)

This endpoint will show the unaggregated statistics for WhatsApp activity (30 days by default if `startDate` and `endDate` or `days` is not passed. The date range can not exceed 90 days)

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

api_instance = Brevo::TransactionalWhatsAppApi.new

opts = { 
  limit: 2500, # Integer | Number limitation for the result returned
  offset: 0, # Integer | Beginning point in the list to retrieve from
  start_date: 'start_date_example', # String | **Mandatory if endDate is used.** Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used.** Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate 
  days: 789, # Integer | Number of days in the past including today (positive integer). _Not compatible with 'startDate' and 'endDate'_ 
  contact_number: 'contact_number_example', # String | Filter results for specific contact (WhatsApp Number with country code. Example, 85264318721)
  event: 'event_example', # String | Filter the report for a specific event type
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all your WhatsApp activity (unaggregated events)
  result = api_instance.get_whatsapp_event_report(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TransactionalWhatsAppApi->get_whatsapp_event_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 2500]
 **offset** | **Integer**| Beginning point in the list to retrieve from | [optional] [default to 0]
 **start_date** | **String**| **Mandatory if endDate is used.** Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate  | [optional] 
 **end_date** | **String**| **Mandatory if startDate is used.** Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate  | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). _Not compatible with &#39;startDate&#39; and &#39;endDate&#39;_  | [optional] 
 **contact_number** | **String**| Filter results for specific contact (WhatsApp Number with country code. Example, 85264318721) | [optional] 
 **event** | **String**| Filter the report for a specific event type | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetWhatsappEventReport**](GetWhatsappEventReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_whatsapp_message**
> InlineResponse2013 send_whatsapp_message(send_whatsapp_message)

Send a WhatsApp message

This endpoint is used to send a WhatsApp message. <br/>(**The first message you send using the API must contain a Template ID. You must create a template on WhatsApp on the Brevo platform to fetch the Template ID.**)

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

api_instance = Brevo::TransactionalWhatsAppApi.new

send_whatsapp_message = Brevo::SendWhatsappMessage.new # SendWhatsappMessage | Values to send WhatsApp message


begin
  #Send a WhatsApp message
  result = api_instance.send_whatsapp_message(send_whatsapp_message)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling TransactionalWhatsAppApi->send_whatsapp_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_whatsapp_message** | [**SendWhatsappMessage**](SendWhatsappMessage.md)| Values to send WhatsApp message | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



