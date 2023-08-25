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
require 'date'

# Unit tests for Brevo::RequestContactExportCustomContactFilter
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RequestContactExportCustomContactFilter' do
  before do
    # run before each test
    @instance = Brevo::RequestContactExportCustomContactFilter.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RequestContactExportCustomContactFilter' do
    it 'should create an instance of RequestContactExportCustomContactFilter' do
      expect(@instance).to be_instance_of(Brevo::RequestContactExportCustomContactFilter)
    end
  end
  describe 'test attribute "action_for_contacts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["allContacts", "subscribed", "unsubscribed", "unsubscribedPerList"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action_for_contacts = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "action_for_email_campaigns"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["openers", "nonOpeners", "clickers", "nonClickers", "unsubscribed", "hardBounces", "softBounces"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action_for_email_campaigns = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "action_for_sms_campaigns"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["hardBounces", "softBounces", "unsubscribed"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action_for_sms_campaigns = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "list_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email_campaign_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sms_campaign_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
