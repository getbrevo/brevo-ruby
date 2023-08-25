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

# Unit tests for Brevo::ProcessApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProcessApi' do
  before do
    # run before each test
    @instance = Brevo::ProcessApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcessApi' do
    it 'should create an instance of ProcessApi' do
      expect(@instance).to be_instance_of(Brevo::ProcessApi)
    end
  end

  # unit tests for get_process
  # Return the informations for a process
  # @param process_id Id of the process
  # @param [Hash] opts the optional parameters
  # @return [GetProcess]
  describe 'get_process test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_processes
  # Return all the processes for your account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number limitation for the result returned
  # @option opts [Integer] :offset Beginning point in the list to retrieve from.
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetProcesses]
  describe 'get_processes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
