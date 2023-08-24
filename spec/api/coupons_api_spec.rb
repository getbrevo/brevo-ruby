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

# Unit tests for Brevo::CouponsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CouponsApi' do
  before do
    # run before each test
    @instance = Brevo::CouponsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CouponsApi' do
    it 'should create an instance of CouponsApi' do
      expect(@instance).to be_instance_of(Brevo::CouponsApi)
    end
  end

  # unit tests for create_coupon_collection
  # Create а coupon collection
  # @param create_coupon_collection Values to create a coupon collection
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2012]
  describe 'create_coupon_collection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_coupons
  # Create coupons for a coupon collection
  # @param create_coupons Values to create coupons
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_coupons test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_collection
  # Get a coupon collection by id
  # @param id Id of the collection to return
  # @param [Hash] opts the optional parameters
  # @return [GetCouponCollection]
  describe 'get_coupon_collection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_collections
  # Get all your coupon collections
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents returned per page
  # @option opts [Integer] :offset Index of the first document on the page
  # @option opts [String] :sort Sort the results by creation time in ascending/descending order
  # @return [GetCouponCollection]
  describe 'get_coupon_collections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_coupon_collection
  # Update a coupon collection by id
  # @param id Id of the collection to update
  # @param update_coupon_collection Values to update the coupon collection
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'update_coupon_collection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
