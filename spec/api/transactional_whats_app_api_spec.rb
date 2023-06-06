=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/getbrevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for BrevoRuby::TransactionalWhatsAppApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionalWhatsAppApi' do
  before do
    # run before each test
    @instance = BrevoRuby::TransactionalWhatsAppApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionalWhatsAppApi' do
    it 'should create an instance of TransactionalWhatsAppApi' do
      expect(@instance).to be_instance_of(BrevoRuby::TransactionalWhatsAppApi)
    end
  end

  # unit tests for get_whatsapp_event_report
  # Get all your WhatsApp activity (unaggregated events)
  # This endpoint will show the unaggregated statistics for WhatsApp activity (30 days by default if &#x60;startDate&#x60; and &#x60;endDate&#x60; or &#x60;days&#x60; is not passed. The date range can not exceed 90 days)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number limitation for the result returned
  # @option opts [Integer] :offset Beginning point in the list to retrieve from
  # @option opts [String] :start_date **Mandatory if endDate is used.** Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate 
  # @option opts [String] :end_date **Mandatory if startDate is used.** Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate 
  # @option opts [Integer] :days Number of days in the past including today (positive integer). _Not compatible with &#39;startDate&#39; and &#39;endDate&#39;_ 
  # @option opts [String] :contact_number Filter results for specific contact (WhatsApp Number with country code. Example, 85264318721)
  # @option opts [String] :event Filter the report for a specific event type
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetWhatsappEventReport]
  describe 'get_whatsapp_event_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_whatsapp_message
  # Send a WhatsApp message
  # This endpoint is used to send a WhatsApp message. &lt;br/&gt;(**The first message you send using the API must contain a Template ID. You must create a template on WhatsApp on the Brevo platform to fetch the Template ID.**)
  # @param send_whatsapp_message Values to send WhatsApp message
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2013]
  describe 'send_whatsapp_message test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
