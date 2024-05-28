# Brevo::WhatsAppCampaignsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_whats_app_campaign**](WhatsAppCampaignsApi.md#create_whats_app_campaign) | **POST** /whatsappCampaigns | Create and Send a WhatsApp campaign
[**create_whats_app_template**](WhatsAppCampaignsApi.md#create_whats_app_template) | **POST** /whatsppCampaigns/template | Create a WhatsApp template
[**delete_whats_app_campaign**](WhatsAppCampaignsApi.md#delete_whats_app_campaign) | **DELETE** /whatsappCampaigns/{campaignId} | Delete a WhatsApp campaign
[**get_whats_app_campaign**](WhatsAppCampaignsApi.md#get_whats_app_campaign) | **GET** /whatsappCampaigns/{campaignId} | Get a WhatsApp campaign
[**get_whats_app_campaigns**](WhatsAppCampaignsApi.md#get_whats_app_campaigns) | **GET** /whatsappCampaigns | Return all your created WhatsApp campaigns
[**get_whats_app_config**](WhatsAppCampaignsApi.md#get_whats_app_config) | **GET** /whatsappCampaigns/config | Get your WhatsApp API account information
[**get_whats_app_templates**](WhatsAppCampaignsApi.md#get_whats_app_templates) | **GET** /whatsappCampaigns/template-list | Return all your created WhatsApp templates
[**send_whats_app_template_approval**](WhatsAppCampaignsApi.md#send_whats_app_template_approval) | **POST** /whatsappCampaigns/template/approval/{templateId} | Send your WhatsApp template for approval
[**update_whats_app_campaign**](WhatsAppCampaignsApi.md#update_whats_app_campaign) | **PUT** /whatsappCampaigns/{campaignId} | Update a WhatsApp campaign


# **create_whats_app_campaign**
> CreateModel create_whats_app_campaign(whats_app_campaigns)

Create and Send a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new

whats_app_campaigns = Brevo::CreateWhatsAppCampaign.new # CreateWhatsAppCampaign | Values to create a campaign


begin
  #Create and Send a WhatsApp campaign
  result = api_instance.create_whats_app_campaign(whats_app_campaigns)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->create_whats_app_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whats_app_campaigns** | [**CreateWhatsAppCampaign**](CreateWhatsAppCampaign.md)| Values to create a campaign | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_whats_app_template**
> CreateModel create_whats_app_template(whats_app_templates)

Create a WhatsApp template

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

api_instance = Brevo::WhatsAppCampaignsApi.new

whats_app_templates = Brevo::CreateWhatsAppTemplate.new # CreateWhatsAppTemplate | Values to create a template


begin
  #Create a WhatsApp template
  result = api_instance.create_whats_app_template(whats_app_templates)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->create_whats_app_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whats_app_templates** | [**CreateWhatsAppTemplate**](CreateWhatsAppTemplate.md)| Values to create a template | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_whats_app_campaign**
> delete_whats_app_campaign(campaign_id)

Delete a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new

campaign_id = 789 # Integer | id of the campaign


begin
  #Delete a WhatsApp campaign
  api_instance.delete_whats_app_campaign(campaign_id)
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->delete_whats_app_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_whats_app_campaign**
> GetWhatsappCampaignOverview get_whats_app_campaign(campaign_id)

Get a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new

campaign_id = 789 # Integer | Id of the campaign


begin
  #Get a WhatsApp campaign
  result = api_instance.get_whats_app_campaign(campaign_id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->get_whats_app_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Id of the campaign | 

### Return type

[**GetWhatsappCampaignOverview**](GetWhatsappCampaignOverview.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_whats_app_campaigns**
> GetWhatsappCampaigns get_whats_app_campaigns(opts)

Return all your created WhatsApp campaigns

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

api_instance = Brevo::WhatsAppCampaignsApi.new

opts = { 
  start_date: 'start_date_example', # String | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record modification. Default order is **descending** if `sort` is not passed
}

begin
  #Return all your created WhatsApp campaigns
  result = api_instance.get_whats_app_campaigns(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->get_whats_app_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] 
 **end_date** | **String**| **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetWhatsappCampaigns**](GetWhatsappCampaigns.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_whats_app_config**
> GetWhatsAppConfig get_whats_app_config

Get your WhatsApp API account information

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

api_instance = Brevo::WhatsAppCampaignsApi.new

begin
  #Get your WhatsApp API account information
  result = api_instance.get_whats_app_config
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->get_whats_app_config: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetWhatsAppConfig**](GetWhatsAppConfig.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_whats_app_templates**
> GetWATemplates get_whats_app_templates(opts)

Return all your created WhatsApp templates

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

api_instance = Brevo::WhatsAppCampaignsApi.new

opts = { 
  start_date: 'start_date_example', # String | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc', # String | Sort the results in the ascending/descending order of record modification. Default order is **descending** if `sort` is not passed
  source: 'source_example' # String | source of the template
}

begin
  #Return all your created WhatsApp templates
  result = api_instance.get_whats_app_templates(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->get_whats_app_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] 
 **end_date** | **String**| **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **source** | **String**| source of the template | [optional] 

### Return type

[**GetWATemplates**](GetWATemplates.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_whats_app_template_approval**
> send_whats_app_template_approval(template_id)

Send your WhatsApp template for approval

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

api_instance = Brevo::WhatsAppCampaignsApi.new

template_id = 789 # Integer | id of the campaign


begin
  #Send your WhatsApp template for approval
  api_instance.send_whats_app_template_approval(template_id)
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->send_whats_app_template_approval: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_whats_app_campaign**
> update_whats_app_campaign(campaign_id, opts)

Update a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new

campaign_id = 789 # Integer | Id of the campaign

opts = { 
  whats_app_campaign: Brevo::UpdateWhatsAppCampaign.new # UpdateWhatsAppCampaign | values to update WhatsApp Campaign
}

begin
  #Update a WhatsApp campaign
  api_instance.update_whats_app_campaign(campaign_id, opts)
rescue Brevo::ApiError => e
  puts "Exception when calling WhatsAppCampaignsApi->update_whats_app_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Id of the campaign | 
 **whats_app_campaign** | [**UpdateWhatsAppCampaign**](UpdateWhatsAppCampaign.md)| values to update WhatsApp Campaign | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



