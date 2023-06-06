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

# Unit tests for BrevoRuby::FilesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FilesApi' do
  before do
    # run before each test
    @instance = BrevoRuby::FilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilesApi' do
    it 'should create an instance of FilesApi' do
      expect(@instance).to be_instance_of(BrevoRuby::FilesApi)
    end
  end

  # unit tests for crm_files_get
  # Get all files
  # @param [Hash] opts the optional parameters
  # @option opts [String] :entity Filter by file entity type
  # @option opts [String] :entity_ids Filter by file entity IDs
  # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
  # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
  # @return [FileList]
  describe 'crm_files_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_files_id_data_get
  # Get file details
  # @param id File id to get file data.
  # @param [Hash] opts the optional parameters
  # @return [FileData]
  describe 'crm_files_id_data_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_files_id_delete
  # Delete a file
  # @param id File id to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'crm_files_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_files_id_get
  # Download a file
  # @param id File id to download.
  # @param [Hash] opts the optional parameters
  # @return [FileDownloadableLink]
  describe 'crm_files_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_files_post
  # Upload a file
  # @param file File data to create a file.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :deal_id Deal id linked to a file
  # @option opts [Integer] :contact_id Contact id linked to a file
  # @option opts [String] :company_id Company id linked to a file
  # @return [FileData]
  describe 'crm_files_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
