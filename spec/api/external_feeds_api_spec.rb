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

# Unit tests for BrevoApiV3Sdk::ExternalFeedsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalFeedsApi' do
  before do
    # run before each test
    @instance = BrevoApiV3Sdk::ExternalFeedsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalFeedsApi' do
    it 'should create an instance of ExternalFeedsApi' do
      expect(@instance).to be_instance_of(BrevoApiV3Sdk::ExternalFeedsApi)
    end
  end

  # unit tests for create_external_feed
  # Create an external feed
  # This endpoint will create an external feed.
  # @param create_external_feed Values to create a feed
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2013]
  describe 'create_external_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_external_feed
  # Delete an external feed
  # This endpoint will delete an external feed.
  # @param uuid UUID of the feed to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_external_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_external_feeds
  # Fetch all external feeds
  # This endpoint can fetch all created external feeds.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Can be used to filter records by search keyword on feed name
  # @option opts [Date] :start_date Mandatory if &#x60;endDate&#x60; is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date.
  # @option opts [Date] :end_date Mandatory if &#x60;startDate&#x60; is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed.
  # @option opts [String] :auth_type Filter the records by &#x60;authType&#x60; of the feed.
  # @option opts [Integer] :limit Number of documents returned per page.
  # @option opts [Integer] :offset Index of the first document on the page.
  # @return [GetAllExternalFeeds]
  describe 'get_all_external_feeds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_feed_by_uuid
  # Get an external feed by UUID
  # This endpoint will update an external feed.
  # @param uuid UUID of the feed to fetch
  # @param [Hash] opts the optional parameters
  # @return [GetExternalFeedByUUID]
  describe 'get_external_feed_by_uuid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_external_feed
  # Update an external feed
  # This endpoint will update an external feed.
  # @param uuid UUID of the feed to update
  # @param update_external_feed Values to update a feed
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_external_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end