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

# Unit tests for BrevoApiV3Sdk::TasksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TasksApi' do
  before do
    # run before each test
    @instance = BrevoApiV3Sdk::TasksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TasksApi' do
    it 'should create an instance of TasksApi' do
      expect(@instance).to be_instance_of(BrevoApiV3Sdk::TasksApi)
    end
  end

  # unit tests for crm_tasks_get
  # Get all tasks
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_type Filter by task type (ID)
  # @option opts [String] :filter_status Filter by task status
  # @option opts [String] :filter_date Filter by date
  # @option opts [String] :filter_assign_to Filter by assignTo id
  # @option opts [String] :filter_contacts Filter by contact ids
  # @option opts [String] :filter_deals Filter by deals ids
  # @option opts [String] :filter_companies Filter by companies ids
  # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
  # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
  # @option opts [String] :sort_by The field used to sort field names.
  # @return [TaskList]
  describe 'crm_tasks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_tasks_id_delete
  # Delete a task
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'crm_tasks_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_tasks_id_get
  # Get a task
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Task]
  describe 'crm_tasks_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_tasks_id_patch
  # Update a task
  # @param id 
  # @param body Updated task details.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'crm_tasks_id_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_tasks_post
  # Create a task
  # @param body Task name.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2011]
  describe 'crm_tasks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crm_tasktypes_get
  # Get all task types
  # @param [Hash] opts the optional parameters
  # @return [TaskTypes]
  describe 'crm_tasktypes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
