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
  class ProcessApi
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
    
    # Return the informations for a process
    # @param process_id Id of the process
    # @param [Hash] opts the optional parameters
    # @return [GetProcess]
    def get_process(process_id, opts = {})
      data, _status_code, _headers = get_process_with_http_info(process_id, opts)
      data
    end

    # Return the informations for a process
    # @param process_id Id of the process
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetProcess, Fixnum, Hash)>] GetProcess data, response status code and response headers
    def get_process_with_http_info(process_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcessApi.get_process ...'
      end
      # verify the required parameter 'process_id' is set
      if @api_client.config.client_side_validation && process_id.nil?
        fail ArgumentError, "Missing the required parameter 'process_id' when calling ProcessApi.get_process"
      end
      # resource path
      local_var_path = '/processes/{processId}'.sub('{' + 'processId' + '}', process_id.to_s)

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
        :return_type => 'GetProcess')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcessApi#get_process\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all the processes for your account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned (default to 10)
    # @option opts [Integer] :offset Beginning point in the list to retrieve from. (default to 0)
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed (default to desc)
    # @return [GetProcesses]
    def get_processes(opts = {})
      data, _status_code, _headers = get_processes_with_http_info(opts)
      data
    end

    # Return all the processes for your account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned
    # @option opts [Integer] :offset Beginning point in the list to retrieve from.
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
    # @return [Array<(GetProcesses, Fixnum, Hash)>] GetProcesses data, response status code and response headers
    def get_processes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcessApi.get_processes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ProcessApi.get_processes, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ProcessApi.get_processes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/processes'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
        :return_type => 'GetProcesses')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcessApi#get_processes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
