# BrevoApiV3Sdk::UpdateSmtpTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Tag of the template | [optional] 
**sender** | [**UpdateSmtpTemplateSender**](UpdateSmtpTemplateSender.md) |  | [optional] 
**template_name** | **String** | Name of the template | [optional] 
**html_content** | **String** | Required if htmlUrl is empty. If the template is designed using Drag &amp; Drop editor via HTML content, then the design page will not have Drag &amp; Drop editor access for that template. Body of the message (HTML must have more than 10 characters) | [optional] 
**html_url** | **String** | Required if htmlContent is empty. URL to the body of the email (HTML) | [optional] 
**subject** | **String** | Subject of the email | [optional] 
**reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] 
**to_field** | **String** | To personalize the «To» Field. If you want to include the first name and last name of your recipient, add {FNAME} {LNAME}. These contact attributes must already exist in your Brevo account. If input parameter &#39;params&#39; used please use {{contact.FNAME}} {{contact.LNAME}} for personalization | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**is_active** | **BOOLEAN** | Status of the template. isActive &#x3D; false means template is inactive, isActive &#x3D; true means template is active | [optional] 


