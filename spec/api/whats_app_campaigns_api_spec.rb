=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for Brevo::WhatsAppCampaignsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WhatsAppCampaignsApi' do
  before do
    # run before each test
    @instance = Brevo::WhatsAppCampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsAppCampaignsApi' do
    it 'should create an instance of WhatsAppCampaignsApi' do
      expect(@instance).to be_instance_of(Brevo::WhatsAppCampaignsApi)
    end
  end

  # unit tests for create_whats_app_campaign
  # Create and Send a WhatsApp campaign
  # @param whats_app_campaigns Values to create a campaign
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_whats_app_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_whats_app_template
  # Create a WhatsApp template
  # @param whats_app_templates Values to create a template
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_whats_app_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_whats_app_campaign
  # Delete a WhatsApp campaign
  # @param campaign_id id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_whats_app_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whats_app_campaign
  # Get a WhatsApp campaign
  # @param campaign_id Id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [GetWhatsappCampaignOverview]
  describe 'get_whats_app_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whats_app_campaigns
  # Return all your created WhatsApp campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  # @option opts [String] :end_date **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetWhatsappCampaigns]
  describe 'get_whats_app_campaigns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whats_app_config
  # Get your WhatsApp API account information
  # @param [Hash] opts the optional parameters
  # @return [GetWhatsAppConfig]
  describe 'get_whats_app_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whats_app_templates
  # Return all your created WhatsApp templates
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  # @option opts [String] :end_date **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @option opts [String] :source source of the template
  # @return [GetWATemplates]
  describe 'get_whats_app_templates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_whats_app_template_approval
  # Send your WhatsApp template for approval
  # @param template_id id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_whats_app_template_approval test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_whats_app_campaign
  # Update a WhatsApp campaign
  # @param campaign_id Id of the campaign
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateWhatsAppCampaign] :whats_app_campaign values to update WhatsApp Campaign
  # @return [nil]
  describe 'update_whats_app_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
