# Brevo::CreateUpdateProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Product ID for which you requested the details | 
**name** | **String** | Mandatory in case of creation**. Name of the product for which you requested the details | 
**url** | **String** | URL to the product | [optional] 
**image_url** | **String** | Absolute URL to the cover image of the product | [optional] 
**sku** | **String** | Product identifier from the shop | [optional] 
**price** | **Float** | Price of the product | [optional] 
**categories** | **Array&lt;String&gt;** | Category ID-s of the product | [optional] 
**parent_id** | **String** | Parent product id of the product | [optional] 
**meta_info** | **Hash&lt;String, String&gt;** | Meta data of product such as description, vendor, producer, stock level. The size of cumulative metaInfo shall not exceed **1000 KB**. Maximum length of metaInfo object can be 20. | [optional] 
**update_enabled** | **BOOLEAN** | Facilitate to update the existing category in the same request (updateEnabled &#x3D; true) | [optional] [default to false]
**deleted_at** | **String** | UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) of the product deleted from the shop&#39;s database | [optional] 
**is_deleted** | **BOOLEAN** | product deleted from the shop&#39;s database | [optional] 


