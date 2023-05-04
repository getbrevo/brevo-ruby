=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module BrevoApiV3Sdk
  class ExternalFeedsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set custom user_agent if explicitly passed in api
    # default will still remain Swagger-Codegen/#{VERSION}/ruby
    def setUserAgent(user_agent)
      @user_agent = user_agent
      if user_agent.is_a?(String) && user_agent.downcase.start_with?('brevo_')
        @api_client.default_headers['User-Agent'] = @user_agent
      end
    end
    
    # Create an external feed
    # This endpoint will create an external feed.
    # @param create_external_feed Values to create a feed
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def create_external_feed(create_external_feed, opts = {})
      data, _status_code, _headers = create_external_feed_with_http_info(create_external_feed, opts)
      data
    end

    # Create an external feed
    # This endpoint will create an external feed.
    # @param create_external_feed Values to create a feed
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Fixnum, Hash)>] InlineResponse2013 data, response status code and response headers
    def create_external_feed_with_http_info(create_external_feed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalFeedsApi.create_external_feed ...'
      end
      # verify the required parameter 'create_external_feed' is set
      if @api_client.config.client_side_validation && create_external_feed.nil?
        fail ArgumentError, "Missing the required parameter 'create_external_feed' when calling ExternalFeedsApi.create_external_feed"
      end
      # resource path
      local_var_path = '/feeds'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_external_feed)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2013')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalFeedsApi#create_external_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an external feed
    # This endpoint will delete an external feed.
    # @param uuid UUID of the feed to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_external_feed(uuid, opts = {})
      delete_external_feed_with_http_info(uuid, opts)
      nil
    end

    # Delete an external feed
    # This endpoint will delete an external feed.
    # @param uuid UUID of the feed to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_external_feed_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalFeedsApi.delete_external_feed ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ExternalFeedsApi.delete_external_feed"
      end
      # resource path
      local_var_path = '/feeds/{uuid}'.sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalFeedsApi#delete_external_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetch all external feeds
    # This endpoint can fetch all created external feeds.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Can be used to filter records by search keyword on feed name
    # @option opts [Date] :start_date Mandatory if &#x60;endDate&#x60; is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date.
    # @option opts [Date] :end_date Mandatory if &#x60;startDate&#x60; is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed. (default to desc)
    # @option opts [String] :auth_type Filter the records by &#x60;authType&#x60; of the feed.
    # @option opts [Integer] :limit Number of documents returned per page. (default to 50)
    # @option opts [Integer] :offset Index of the first document on the page. (default to 0)
    # @return [GetAllExternalFeeds]
    def get_all_external_feeds(opts = {})
      data, _status_code, _headers = get_all_external_feeds_with_http_info(opts)
      data
    end

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
    # @return [Array<(GetAllExternalFeeds, Fixnum, Hash)>] GetAllExternalFeeds data, response status code and response headers
    def get_all_external_feeds_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalFeedsApi.get_all_external_feeds ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'auth_type'] && !['basic', 'token', 'noAuth'].include?(opts[:'auth_type'])
        fail ArgumentError, 'invalid value for "auth_type", must be one of basic, token, noAuth'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ExternalFeedsApi.get_all_external_feeds, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ExternalFeedsApi.get_all_external_feeds, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/feeds'

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'authType'] = opts[:'auth_type'] if !opts[:'auth_type'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAllExternalFeeds')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalFeedsApi#get_all_external_feeds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an external feed by UUID
    # This endpoint will update an external feed.
    # @param uuid UUID of the feed to fetch
    # @param [Hash] opts the optional parameters
    # @return [GetExternalFeedByUUID]
    def get_external_feed_by_uuid(uuid, opts = {})
      data, _status_code, _headers = get_external_feed_by_uuid_with_http_info(uuid, opts)
      data
    end

    # Get an external feed by UUID
    # This endpoint will update an external feed.
    # @param uuid UUID of the feed to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetExternalFeedByUUID, Fixnum, Hash)>] GetExternalFeedByUUID data, response status code and response headers
    def get_external_feed_by_uuid_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalFeedsApi.get_external_feed_by_uuid ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ExternalFeedsApi.get_external_feed_by_uuid"
      end
      # resource path
      local_var_path = '/feeds/{uuid}'.sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetExternalFeedByUUID')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalFeedsApi#get_external_feed_by_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an external feed
    # This endpoint will update an external feed.
    # @param uuid UUID of the feed to update
    # @param update_external_feed Values to update a feed
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_external_feed(uuid, update_external_feed, opts = {})
      update_external_feed_with_http_info(uuid, update_external_feed, opts)
      nil
    end

    # Update an external feed
    # This endpoint will update an external feed.
    # @param uuid UUID of the feed to update
    # @param update_external_feed Values to update a feed
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_external_feed_with_http_info(uuid, update_external_feed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalFeedsApi.update_external_feed ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ExternalFeedsApi.update_external_feed"
      end
      # verify the required parameter 'update_external_feed' is set
      if @api_client.config.client_side_validation && update_external_feed.nil?
        fail ArgumentError, "Missing the required parameter 'update_external_feed' when calling ExternalFeedsApi.update_external_feed"
      end
      # resource path
      local_var_path = '/feeds/{uuid}'.sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_external_feed)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalFeedsApi#update_external_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
