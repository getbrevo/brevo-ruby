# Brevo::ContactsApi

All URIs are relative to *https://api.brevo.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contact_to_list**](ContactsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
[**create_attribute**](ContactsApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Create contact attribute
[**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create a contact
[**create_doi_contact**](ContactsApi.md#create_doi_contact) | **POST** /contacts/doubleOptinConfirmation | Create Contact via DOI (Double-Opt-In) Flow
[**create_folder**](ContactsApi.md#create_folder) | **POST** /contacts/folders | Create a folder
[**create_list**](ContactsApi.md#create_list) | **POST** /contacts/lists | Create a list
[**delete_attribute**](ContactsApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Delete an attribute
[**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /contacts/{identifier} | Delete a contact
[**delete_folder**](ContactsApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
[**delete_list**](ContactsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
[**delete_multi_attribute_options**](ContactsApi.md#delete_multi_attribute_options) | **DELETE** /contacts/attributes/{attributeType}/{multipleChoiceAttribute}/{multipleChoiceAttributeOption} | Delete a multiple-choice attribute option
[**get_attributes**](ContactsApi.md#get_attributes) | **GET** /contacts/attributes | List all attributes
[**get_contact_info**](ContactsApi.md#get_contact_info) | **GET** /contacts/{identifier} | Get a contact&#39;s details
[**get_contact_stats**](ContactsApi.md#get_contact_stats) | **GET** /contacts/{identifier}/campaignStats | Get email campaigns&#39; statistics for a contact
[**get_contacts**](ContactsApi.md#get_contacts) | **GET** /contacts | Get all the contacts
[**get_contacts_from_list**](ContactsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get contacts in a list
[**get_folder**](ContactsApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder&#39;s details
[**get_folder_lists**](ContactsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder
[**get_folders**](ContactsApi.md#get_folders) | **GET** /contacts/folders | Get all folders
[**get_list**](ContactsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get a list&#39;s details
[**get_lists**](ContactsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
[**get_segments**](ContactsApi.md#get_segments) | **GET** /contacts/segments | Get all the Segments
[**import_contacts**](ContactsApi.md#import_contacts) | **POST** /contacts/import | Import contacts
[**remove_contact_from_list**](ContactsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Delete a contact from a list
[**request_contact_export**](ContactsApi.md#request_contact_export) | **POST** /contacts/export | Export contacts
[**update_attribute**](ContactsApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Update contact attribute
[**update_batch_contacts**](ContactsApi.md#update_batch_contacts) | **POST** /contacts/batch | Update multiple contacts
[**update_contact**](ContactsApi.md#update_contact) | **PUT** /contacts/{identifier} | Update a contact
[**update_folder**](ContactsApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder
[**update_list**](ContactsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list


# **add_contact_to_list**
> PostContactInfo add_contact_to_list(list_id, contact_emails)

Add existing contacts to a list

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list

contact_emails = Brevo::AddContactToList.new # AddContactToList | Emails addresses OR IDs OR EXT_ID attributes of the contacts


begin
  #Add existing contacts to a list
  result = api_instance.add_contact_to_list(list_id, contact_emails)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->add_contact_to_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **contact_emails** | [**AddContactToList**](AddContactToList.md)| Emails addresses OR IDs OR EXT_ID attributes of the contacts | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_attribute**
> create_attribute(attribute_category, attribute_name, create_attribute)

Create contact attribute

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

api_instance = Brevo::ContactsApi.new

attribute_category = 'attribute_category_example' # String | Category of the attribute

attribute_name = 'attribute_name_example' # String | Name of the attribute

create_attribute = Brevo::CreateAttribute.new # CreateAttribute | Values to create an attribute


begin
  #Create contact attribute
  api_instance.create_attribute(attribute_category, attribute_name, create_attribute)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->create_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the attribute | 
 **create_attribute** | [**CreateAttribute**](CreateAttribute.md)| Values to create an attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_contact**
> CreateUpdateContactModel create_contact(create_contact)

Create a contact

Creates new contacts on Brevo. Contacts can be created by passing either - <br><br> 1. email address of the contact (email_id),  <br> 2. phone number of the contact (to be passed as \"SMS\" field in \"attributes\" along with proper country code), For example- {\"SMS\":\"+91xxxxxxxxxx\"} or {\"SMS\":\"0091xxxxxxxxxx\"} <br> 3. ext_id <br>

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

api_instance = Brevo::ContactsApi.new

create_contact = Brevo::CreateContact.new # CreateContact | Values to create a contact


begin
  #Create a contact
  result = api_instance.create_contact(create_contact)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact** | [**CreateContact**](CreateContact.md)| Values to create a contact | 

### Return type

[**CreateUpdateContactModel**](CreateUpdateContactModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_doi_contact**
> create_doi_contact(create_doi_contact)

Create Contact via DOI (Double-Opt-In) Flow

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

api_instance = Brevo::ContactsApi.new

create_doi_contact = Brevo::CreateDoiContact.new # CreateDoiContact | Values to create the Double opt-in (DOI) contact


begin
  #Create Contact via DOI (Double-Opt-In) Flow
  api_instance.create_doi_contact(create_doi_contact)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->create_doi_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_doi_contact** | [**CreateDoiContact**](CreateDoiContact.md)| Values to create the Double opt-in (DOI) contact | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> CreateModel create_folder(create_folder)

Create a folder

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

api_instance = Brevo::ContactsApi.new

create_folder = Brevo::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Create a folder
  result = api_instance.create_folder(create_folder)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md)| Name of the folder | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_list**
> CreateModel create_list(create_list)

Create a list

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

api_instance = Brevo::ContactsApi.new

create_list = Brevo::CreateList.new # CreateList | Values to create a list


begin
  #Create a list
  result = api_instance.create_list(create_list)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->create_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_list** | [**CreateList**](CreateList.md)| Values to create a list | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_attribute**
> delete_attribute(attribute_category, attribute_name)

Delete an attribute

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

api_instance = Brevo::ContactsApi.new

attribute_category = 'attribute_category_example' # String | Category of the attribute

attribute_name = 'attribute_name_example' # String | Name of the existing attribute


begin
  #Delete an attribute
  api_instance.delete_attribute(attribute_category, attribute_name)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->delete_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the existing attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_contact**
> delete_contact(identifier, opts)

Delete a contact

There are 2 ways to delete a contact <br><br> Option 1- https://api.brevo.com/v3/contacts/{identifier} <br><br> Option 2- https://api.brevo.com/v3/contacts/{identifier}?identifierType={} <br> <br> Option 1 only works if identifierType is email_id (for EMAIL) or contact_id (for ID of the contact),where you can directly pass the value of EMAIL and ID of the contact.   <br><br> Option 2 works for all identifierType, use email_id for EMAIL attribute, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute.

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

api_instance = Brevo::ContactsApi.new

identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact OR EXT_ID attribute (urlencoded)

opts = { 
  identifier_type: 'identifier_type_example' # String | email_id for Email, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute
}

begin
  #Delete a contact
  api_instance.delete_contact(identifier, opts)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->delete_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Email (urlencoded) OR ID of the contact OR EXT_ID attribute (urlencoded) | 
 **identifier_type** | **String**| email_id for Email, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(folder_id)

Delete a folder (and all its lists)

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

api_instance = Brevo::ContactsApi.new

folder_id = 789 # Integer | Id of the folder


begin
  #Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_list**
> delete_list(list_id)

Delete a list

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list


begin
  #Delete a list
  api_instance.delete_list(list_id)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->delete_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_multi_attribute_options**
> delete_multi_attribute_options(attribute_type, multiple_choice_attribute, multiple_choice_attribute_option)

Delete a multiple-choice attribute option

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

api_instance = Brevo::ContactsApi.new

attribute_type = 'attribute_type_example' # String | Type of the attribute

multiple_choice_attribute = 'multiple_choice_attribute_example' # String | Name of the existing multiple-choice attribute

multiple_choice_attribute_option = 'multiple_choice_attribute_option_example' # String | Name of the existing multiple-choice attribute option that you want to delete


begin
  #Delete a multiple-choice attribute option
  api_instance.delete_multi_attribute_options(attribute_type, multiple_choice_attribute, multiple_choice_attribute_option)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->delete_multi_attribute_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_type** | **String**| Type of the attribute | 
 **multiple_choice_attribute** | **String**| Name of the existing multiple-choice attribute | 
 **multiple_choice_attribute_option** | **String**| Name of the existing multiple-choice attribute option that you want to delete | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_attributes**
> GetAttributes get_attributes

List all attributes

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

api_instance = Brevo::ContactsApi.new

begin
  #List all attributes
  result = api_instance.get_attributes
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_attributes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAttributes**](GetAttributes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_info**
> GetExtendedContactDetails get_contact_info(identifier, opts)

Get a contact's details

There are 2 ways to get a contact <br><br> Option 1- https://api.brevo.com/v3/contacts/{identifier} <br><br> Option 2- https://api.brevo.com/v3/contacts/{identifier}?identifierType={} <br> <br> Option 1 only works if identifierType is email_id (for EMAIL), phone_id (for SMS) or contact_id (for ID of the contact),where you can directly pass the value of EMAIL, SMS and ID of the contact.   <br><br> Option 2 works for all identifierType, use email_id for EMAIL attribute, phone_id for SMS attribute, contact_id for ID of the contact, ext_id for EXT_ID attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute <br><br>Along with the contact details, this endpoint will show the statistics of contact for the recent 90 days by default. To fetch the earlier statistics, please use Get contact campaign stats ``https://developers.brevo.com/reference/contacts-7#getcontactstats`` endpoint with the appropriate date ranges.

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

api_instance = Brevo::ContactsApi.new

identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact OR its SMS attribute value OR EXT_ID attribute (urlencoded)

opts = { 
  identifier_type: 'identifier_type_example', # String | email_id for Email, phone_id for SMS attribute, contact_id for ID of the contact, ext_id for EXT_ID attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute
  start_date: 'start_date_example', # String | **Mandatory if endDate is used.** Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate 
  end_date: 'end_date_example' # String | **Mandatory if startDate is used.** Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate. 
}

begin
  #Get a contact's details
  result = api_instance.get_contact_info(identifier, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Email (urlencoded) OR ID of the contact OR its SMS attribute value OR EXT_ID attribute (urlencoded) | 
 **identifier_type** | **String**| email_id for Email, phone_id for SMS attribute, contact_id for ID of the contact, ext_id for EXT_ID attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE_NUMBER attribute | [optional] 
 **start_date** | **String**| **Mandatory if endDate is used.** Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate  | [optional] 
 **end_date** | **String**| **Mandatory if startDate is used.** Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate.  | [optional] 

### Return type

[**GetExtendedContactDetails**](GetExtendedContactDetails.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_stats**
> GetContactCampaignStats get_contact_stats(identifier, opts)

Get email campaigns' statistics for a contact

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

api_instance = Brevo::ContactsApi.new

identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact

opts = { 
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate
  end_date: 'end_date_example' # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate. Maximum difference between startDate and endDate should not be greater than 90 days
}

begin
  #Get email campaigns' statistics for a contact
  result = api_instance.get_contact_stats(identifier, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Email (urlencoded) OR ID of the contact | 
 **start_date** | **String**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate. Maximum difference between startDate and endDate should not be greater than 90 days | [optional] 

### Return type

[**GetContactCampaignStats**](GetContactCampaignStats.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contacts**
> GetContacts get_contacts(opts)

Get all the contacts

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

api_instance = Brevo::ContactsApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  created_since: 'created_since_example', # String | Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  segment_id: 789, # Integer | Id of the segment. **Either listIds or segmentId can be passed.**
  list_ids: [56], # Array<Integer> | Ids of the list. **Either listIds or segmentId can be passed.**
  filter: 'filter_example' # String | Filter the contacts on the basis of attributes. **Allowed operator: equals. For multiple-choice options, the filter will apply an AND condition between the options. For category attributes, the filter will work with both id and value. (e.g. filter=equals(FIRSTNAME,\"Antoine\"), filter=equals(B1, true), filter=equals(DOB, \"1989-11-23\"), filter=equals(GENDER, \"1\"), filter=equals(GENDER, \"MALE\"), filter=equals(COUNTRY,\"USA, INDIA\")** 
}

begin
  #Get all the contacts
  result = api_instance.get_contacts(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **modified_since** | **String**| Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **created_since** | **String**| Filter (urlencoded) the contacts created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **segment_id** | **Integer**| Id of the segment. **Either listIds or segmentId can be passed.** | [optional] 
 **list_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Ids of the list. **Either listIds or segmentId can be passed.** | [optional] 
 **filter** | **String**| Filter the contacts on the basis of attributes. **Allowed operator: equals. For multiple-choice options, the filter will apply an AND condition between the options. For category attributes, the filter will work with both id and value. (e.g. filter&#x3D;equals(FIRSTNAME,\&quot;Antoine\&quot;), filter&#x3D;equals(B1, true), filter&#x3D;equals(DOB, \&quot;1989-11-23\&quot;), filter&#x3D;equals(GENDER, \&quot;1\&quot;), filter&#x3D;equals(GENDER, \&quot;MALE\&quot;), filter&#x3D;equals(COUNTRY,\&quot;USA, INDIA\&quot;)**  | [optional] 

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contacts_from_list**
> GetContacts get_contacts_from_list(list_id, opts)

Get contacts in a list

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list

opts = { 
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get contacts in a list
  result = api_instance.get_contacts_from_list(list_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts_from_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **modified_since** | **String**| Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder**
> GetFolder get_folder(folder_id)

Returns a folder's details

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

api_instance = Brevo::ContactsApi.new

folder_id = 789 # Integer | id of the folder


begin
  #Returns a folder's details
  result = api_instance.get_folder(folder_id)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| id of the folder | 

### Return type

[**GetFolder**](GetFolder.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder_lists**
> GetFolderLists get_folder_lists(folder_id, opts)

Get lists in a folder

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

api_instance = Brevo::ContactsApi.new

folder_id = 789 # Integer | Id of the folder

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_folder_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folders**
> GetFolders get_folders(opts)

Get all folders

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

api_instance = Brevo::ContactsApi.new

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all folders
  result = api_instance.get_folders(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetFolders**](GetFolders.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list**
> GetExtendedList get_list(list_id, opts)

Get a list's details

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list

opts = { 
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to aggregate the sent email campaigns for a specific list id.Prefer to pass your timezone in date-time format for accurate result
  end_date: 'end_date_example' # String | Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to aggregate the sent email campaigns for a specific list id.Prefer to pass your timezone in date-time format for accurate result
}

begin
  #Get a list's details
  result = api_instance.get_list(list_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **start_date** | **String**| Mandatory if endDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to aggregate the sent email campaigns for a specific list id.Prefer to pass your timezone in date-time format for accurate result | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to aggregate the sent email campaigns for a specific list id.Prefer to pass your timezone in date-time format for accurate result | [optional] 

### Return type

[**GetExtendedList**](GetExtendedList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_lists**
> GetLists get_lists(opts)

Get all the lists

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

api_instance = Brevo::ContactsApi.new

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all the lists
  result = api_instance.get_lists(opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetLists**](GetLists.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_segments**
> GetSegments get_segments(limit, offset, opts)

Get all the Segments

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

api_instance = Brevo::ContactsApi.new

limit = 10 # Integer | Number of documents per page

offset = 0 # Integer | Index of the first document of the page

opts = { 
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all the Segments
  result = api_instance.get_segments(limit, offset, opts)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->get_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetSegments**](GetSegments.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **import_contacts**
> CreatedProcessId import_contacts(request_contact_import)

Import contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input.  **Note**: - Any contact attribute that doesn't exist in your account will be ignored at import end. 

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

api_instance = Brevo::ContactsApi.new

request_contact_import = Brevo::RequestContactImport.new # RequestContactImport | Values to import contacts in Brevo. To know more about the expected format, please have a look at ``https://help.brevo.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns``


begin
  #Import contacts
  result = api_instance.import_contacts(request_contact_import)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->import_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_contact_import** | [**RequestContactImport**](RequestContactImport.md)| Values to import contacts in Brevo. To know more about the expected format, please have a look at &#x60;&#x60;https://help.brevo.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns&#x60;&#x60; | 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_contact_from_list**
> PostContactInfo remove_contact_from_list(list_id, contact_emails)

Delete a contact from a list

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list

contact_emails = Brevo::RemoveContactFromList.new # RemoveContactFromList | Emails addresses OR IDs OR EXT_ID attributes of the contacts


begin
  #Delete a contact from a list
  result = api_instance.remove_contact_from_list(list_id, contact_emails)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->remove_contact_from_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **contact_emails** | [**RemoveContactFromList**](RemoveContactFromList.md)| Emails addresses OR IDs OR EXT_ID attributes of the contacts | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_contact_export**
> CreatedProcessId request_contact_export(request_contact_export)

Export contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input. File will be available in csv.

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

api_instance = Brevo::ContactsApi.new

request_contact_export = Brevo::RequestContactExport.new # RequestContactExport | Values to request a contact export


begin
  #Export contacts
  result = api_instance.request_contact_export(request_contact_export)
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->request_contact_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_contact_export** | [**RequestContactExport**](RequestContactExport.md)| Values to request a contact export | 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_attribute**
> update_attribute(attribute_category, attribute_name, update_attribute)

Update contact attribute

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

api_instance = Brevo::ContactsApi.new

attribute_category = 'attribute_category_example' # String | Category of the attribute

attribute_name = 'attribute_name_example' # String | Name of the existing attribute

update_attribute = Brevo::UpdateAttribute.new # UpdateAttribute | Values to update an attribute


begin
  #Update contact attribute
  api_instance.update_attribute(attribute_category, attribute_name, update_attribute)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->update_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the existing attribute | 
 **update_attribute** | [**UpdateAttribute**](UpdateAttribute.md)| Values to update an attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_batch_contacts**
> update_batch_contacts(update_batch_contacts)

Update multiple contacts

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

api_instance = Brevo::ContactsApi.new

update_batch_contacts = Brevo::UpdateBatchContacts.new # UpdateBatchContacts | Values to update multiple contacts


begin
  #Update multiple contacts
  api_instance.update_batch_contacts(update_batch_contacts)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->update_batch_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_batch_contacts** | [**UpdateBatchContacts**](UpdateBatchContacts.md)| Values to update multiple contacts | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_contact**
> update_contact(identifier, update_contact, opts)

Update a contact

There are 2 ways to update a contact <br><br> Option 1- https://api.brevo.com/v3/contacts/{identifier} <br><br> Option 2- https://api.brevo.com/v3/contacts/{identifier}?identifierType={} <br> <br> Option 1 only works if identifierType is email_id (for EMAIL) or contact_id (for ID of the contact),where you can directly pass the value of EMAIL and ID of the contact.   <br><br> Option 2 works for all identifierType, use email_id for EMAIL attribute, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE attribute

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

api_instance = Brevo::ContactsApi.new

identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact OR EXT_ID attribute (urlencoded) OR its SMS attribute value OR its WHATSAPP attribute value OR its LANDLINE attribute value

update_contact = Brevo::UpdateContact.new # UpdateContact | Values to update a contact

opts = { 
  identifier_type: 'identifier_type_example' # String | email_id for Email, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE attribute
}

begin
  #Update a contact
  api_instance.update_contact(identifier, update_contact, opts)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->update_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Email (urlencoded) OR ID of the contact OR EXT_ID attribute (urlencoded) OR its SMS attribute value OR its WHATSAPP attribute value OR its LANDLINE attribute value | 
 **update_contact** | [**UpdateContact**](UpdateContact.md)| Values to update a contact | 
 **identifier_type** | **String**| email_id for Email, contact_id for ID of the contact, ext_id for EXT_ID attribute, phone_id for SMS attribute, whatsapp_id for WHATSAPP attribute, landline_number_id for LANDLINE attribute | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_folder**
> update_folder(folder_id, update_folder)

Update a folder

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

api_instance = Brevo::ContactsApi.new

folder_id = 789 # Integer | Id of the folder

update_folder = Brevo::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Update a folder
  api_instance.update_folder(folder_id, update_folder)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->update_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 
 **update_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md)| Name of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_list**
> update_list(list_id, update_list)

Update a list

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

api_instance = Brevo::ContactsApi.new

list_id = 789 # Integer | Id of the list

update_list = Brevo::UpdateList.new # UpdateList | Values to update a list


begin
  #Update a list
  api_instance.update_list(list_id, update_list)
rescue Brevo::ApiError => e
  puts "Exception when calling ContactsApi->update_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **update_list** | [**UpdateList**](UpdateList.md)| Values to update a list | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



