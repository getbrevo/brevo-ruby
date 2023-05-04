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
  class MasterAccountApi
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
    
    # Get the details of requested master account
    # This endpoint will provide the details of the master account.
    # @param [Hash] opts the optional parameters
    # @return [MasterDetailsResponse]
    def corporate_master_account_get(opts = {})
      data, _status_code, _headers = corporate_master_account_get_with_http_info(opts)
      data
    end

    # Get the details of requested master account
    # This endpoint will provide the details of the master account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MasterDetailsResponse, Fixnum, Hash)>] MasterDetailsResponse data, response status code and response headers
    def corporate_master_account_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_master_account_get ...'
      end
      # resource path
      local_var_path = '/corporate/masterAccount'

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
        :return_type => 'MasterDetailsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_master_account_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the list of all the sub-accounts of the master account.
    # This endpoint will provide the list all the sub-accounts of the master account.
    # @param offset Index of the first sub-account in the page
    # @param limit Number of sub-accounts to be displayed on each page
    # @param [Hash] opts the optional parameters
    # @return [SubAccountsResponse]
    def corporate_sub_account_get(offset, limit, opts = {})
      data, _status_code, _headers = corporate_sub_account_get_with_http_info(offset, limit, opts)
      data
    end

    # Get the list of all the sub-accounts of the master account.
    # This endpoint will provide the list all the sub-accounts of the master account.
    # @param offset Index of the first sub-account in the page
    # @param limit Number of sub-accounts to be displayed on each page
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubAccountsResponse, Fixnum, Hash)>] SubAccountsResponse data, response status code and response headers
    def corporate_sub_account_get_with_http_info(offset, limit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_get ...'
      end
      # verify the required parameter 'offset' is set
      if @api_client.config.client_side_validation && offset.nil?
        fail ArgumentError, "Missing the required parameter 'offset' when calling MasterAccountApi.corporate_sub_account_get"
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling MasterAccountApi.corporate_sub_account_get"
      end
      # resource path
      local_var_path = '/corporate/subAccount'

      # query parameters
      query_params = {}
      query_params[:'offset'] = offset
      query_params[:'limit'] = limit

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
        :return_type => 'SubAccountsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a sub-account
    # @param id Id of the sub-account organization to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def corporate_sub_account_id_delete(id, opts = {})
      corporate_sub_account_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a sub-account
    # @param id Id of the sub-account organization to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def corporate_sub_account_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MasterAccountApi.corporate_sub_account_id_delete"
      end
      # resource path
      local_var_path = '/corporate/subAccount/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get sub-account details
    # This endpoint will provide the details for the specified sub-account company
    # @param id Id of the sub-account organization
    # @param [Hash] opts the optional parameters
    # @return [SubAccountDetailsResponse]
    def corporate_sub_account_id_get(id, opts = {})
      data, _status_code, _headers = corporate_sub_account_id_get_with_http_info(id, opts)
      data
    end

    # Get sub-account details
    # This endpoint will provide the details for the specified sub-account company
    # @param id Id of the sub-account organization
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubAccountDetailsResponse, Fixnum, Hash)>] SubAccountDetailsResponse data, response status code and response headers
    def corporate_sub_account_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MasterAccountApi.corporate_sub_account_id_get"
      end
      # resource path
      local_var_path = '/corporate/subAccount/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SubAccountDetailsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update sub-account plan
    # This endpoint will update the sub-account plan
    # @param id Id of the sub-account organization
    # @param update_plan_details Values to update a sub-account plan
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def corporate_sub_account_id_plan_put(id, update_plan_details, opts = {})
      corporate_sub_account_id_plan_put_with_http_info(id, update_plan_details, opts)
      nil
    end

    # Update sub-account plan
    # This endpoint will update the sub-account plan
    # @param id Id of the sub-account organization
    # @param update_plan_details Values to update a sub-account plan
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def corporate_sub_account_id_plan_put_with_http_info(id, update_plan_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_id_plan_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MasterAccountApi.corporate_sub_account_id_plan_put"
      end
      # verify the required parameter 'update_plan_details' is set
      if @api_client.config.client_side_validation && update_plan_details.nil?
        fail ArgumentError, "Missing the required parameter 'update_plan_details' when calling MasterAccountApi.corporate_sub_account_id_plan_put"
      end
      # resource path
      local_var_path = '/corporate/subAccount/{id}/plan'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(update_plan_details)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_id_plan_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an API key for a sub-account
    # This endpoint will generate an API v3 key for a sub account
    # @param create_api_key_request Values to generate API key for sub-account
    # @param [Hash] opts the optional parameters
    # @return [CreateApiKeyResponse]
    def corporate_sub_account_key_post(create_api_key_request, opts = {})
      data, _status_code, _headers = corporate_sub_account_key_post_with_http_info(create_api_key_request, opts)
      data
    end

    # Create an API key for a sub-account
    # This endpoint will generate an API v3 key for a sub account
    # @param create_api_key_request Values to generate API key for sub-account
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateApiKeyResponse, Fixnum, Hash)>] CreateApiKeyResponse data, response status code and response headers
    def corporate_sub_account_key_post_with_http_info(create_api_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_key_post ...'
      end
      # verify the required parameter 'create_api_key_request' is set
      if @api_client.config.client_side_validation && create_api_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_api_key_request' when calling MasterAccountApi.corporate_sub_account_key_post"
      end
      # resource path
      local_var_path = '/corporate/subAccount/key'

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
      post_body = @api_client.object_to_http_body(create_api_key_request)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateApiKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_key_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new sub-account under a master account.
    # This endpoint will create a new sub-account under a master account
    # @param sub_account_create values to create new sub-account
    # @param [Hash] opts the optional parameters
    # @return [CreateSubAccountResponse]
    def corporate_sub_account_post(sub_account_create, opts = {})
      data, _status_code, _headers = corporate_sub_account_post_with_http_info(sub_account_create, opts)
      data
    end

    # Create a new sub-account under a master account.
    # This endpoint will create a new sub-account under a master account
    # @param sub_account_create values to create new sub-account
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSubAccountResponse, Fixnum, Hash)>] CreateSubAccountResponse data, response status code and response headers
    def corporate_sub_account_post_with_http_info(sub_account_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_post ...'
      end
      # verify the required parameter 'sub_account_create' is set
      if @api_client.config.client_side_validation && sub_account_create.nil?
        fail ArgumentError, "Missing the required parameter 'sub_account_create' when calling MasterAccountApi.corporate_sub_account_post"
      end
      # resource path
      local_var_path = '/corporate/subAccount'

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
      post_body = @api_client.object_to_http_body(sub_account_create)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateSubAccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate SSO token to access Brevo
    # This endpoint generates an sso token to authenticate and access a sub-account of the master using the account endpoint https://account-app.brevo.com/account/login/sub-account/sso/[token], where [token] will be replaced by the actual token.
    # @param sso_token_request Values to generate SSO token for sub-account
    # @param [Hash] opts the optional parameters
    # @return [GetSsoToken]
    def corporate_sub_account_sso_token_post(sso_token_request, opts = {})
      data, _status_code, _headers = corporate_sub_account_sso_token_post_with_http_info(sso_token_request, opts)
      data
    end

    # Generate SSO token to access Brevo
    # This endpoint generates an sso token to authenticate and access a sub-account of the master using the account endpoint https://account-app.brevo.com/account/login/sub-account/sso/[token], where [token] will be replaced by the actual token.
    # @param sso_token_request Values to generate SSO token for sub-account
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSsoToken, Fixnum, Hash)>] GetSsoToken data, response status code and response headers
    def corporate_sub_account_sso_token_post_with_http_info(sso_token_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.corporate_sub_account_sso_token_post ...'
      end
      # verify the required parameter 'sso_token_request' is set
      if @api_client.config.client_side_validation && sso_token_request.nil?
        fail ArgumentError, "Missing the required parameter 'sso_token_request' when calling MasterAccountApi.corporate_sub_account_sso_token_post"
      end
      # resource path
      local_var_path = '/corporate/subAccount/ssoToken'

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
      post_body = @api_client.object_to_http_body(sso_token_request)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSsoToken')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#corporate_sub_account_sso_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get user activity logs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search.
    # @option opts [String] :end_date Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month.
    # @option opts [Integer] :limit Number of documents per page (default to 10)
    # @option opts [Integer] :offset Index of the first document in the page. (default to 0)
    # @return [GetAccountActivity]
    def get_account_activity(opts = {})
      data, _status_code, _headers = get_account_activity_with_http_info(opts)
      data
    end

    # Get user activity logs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search.
    # @option opts [String] :end_date Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month.
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document in the page.
    # @return [Array<(GetAccountActivity, Fixnum, Hash)>] GetAccountActivity data, response status code and response headers
    def get_account_activity_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MasterAccountApi.get_account_activity ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MasterAccountApi.get_account_activity, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MasterAccountApi.get_account_activity, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/organization/activities'

      # query parameters
      query_params = {}
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
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
        :return_type => 'GetAccountActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MasterAccountApi#get_account_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
