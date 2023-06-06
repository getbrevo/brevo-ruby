=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/getbrevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module BrevoRuby
  class UserApi
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
    
    # Get the list of all your users
    # @param [Hash] opts the optional parameters
    # @return [GetInvitedUsersList]
    def get_invited_users_list(opts = {})
      data, _status_code, _headers = get_invited_users_list_with_http_info(opts)
      data
    end

    # Get the list of all your users
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetInvitedUsersList, Fixnum, Hash)>] GetInvitedUsersList data, response status code and response headers
    def get_invited_users_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_invited_users_list ...'
      end
      # resource path
      local_var_path = '/organization/invited/users'

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
        :return_type => 'GetInvitedUsersList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_invited_users_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check user permission
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [GetUserPermission]
    def get_user_permission(email, opts = {})
      data, _status_code, _headers = get_user_permission_with_http_info(email, opts)
      data
    end

    # Check user permission
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetUserPermission, Fixnum, Hash)>] GetUserPermission data, response status code and response headers
    def get_user_permission_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_permission ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling UserApi.get_user_permission"
      end
      # resource path
      local_var_path = '/organization/user/{email}/permissions'.sub('{' + 'email' + '}', email.to_s)

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
        :return_type => 'GetUserPermission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
