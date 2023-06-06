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

# Unit tests for BrevoRuby::DomainsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DomainsApi' do
  before do
    # run before each test
    @instance = BrevoRuby::DomainsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainsApi' do
    it 'should create an instance of DomainsApi' do
      expect(@instance).to be_instance_of(BrevoRuby::DomainsApi)
    end
  end

  # unit tests for authenticate_domain
  # Authenticate a domain
  # @param domain_name Domain name
  # @param [Hash] opts the optional parameters
  # @return [AuthenticateDomainModel]
  describe 'authenticate_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_domain
  # Create a new domain
  # @param [Hash] opts the optional parameters
  # @option opts [CreateDomain] :domain_name domain&#39;s name
  # @return [CreateDomainModel]
  describe 'create_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_domain
  # Delete a domain
  # @param domain_name Domain name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_domain_configuration
  # Validate domain configuration
  # @param domain_name Domain name
  # @param [Hash] opts the optional parameters
  # @return [GetDomainConfigurationModel]
  describe 'get_domain_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_domains
  # Get the list of all your domains
  # @param [Hash] opts the optional parameters
  # @return [GetDomainsList]
  describe 'get_domains test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
