=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  |   | 422  | Error. Unprocessable Entity | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module Brevo
  class PaymentsApi
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

    # Create a payment request
    # @param create_payment_rquest Create a payment request 
    # @param [Hash] opts the optional parameters
    # @return [CreatePaymentResponse]
    def create_payment_request(create_payment_rquest, opts = {})
      data, _status_code, _headers = create_payment_request_with_http_info(create_payment_rquest, opts)
      data
    end

    # Create a payment request
    # @param create_payment_rquest Create a payment request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreatePaymentResponse, Fixnum, Hash)>] CreatePaymentResponse data, response status code and response headers
    def create_payment_request_with_http_info(create_payment_rquest, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.create_payment_request ...'
      end
      # verify the required parameter 'create_payment_rquest' is set
      if @api_client.config.client_side_validation && create_payment_rquest.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_rquest' when calling PaymentsApi.create_payment_request"
      end
      # resource path
      local_var_path = '/payments/requests'

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
      post_body = @api_client.object_to_http_body(create_payment_rquest)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatePaymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create_payment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a payment request.
    # @param id ID of the payment request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_request(id, opts = {})
      delete_payment_request_with_http_info(id, opts)
      nil
    end

    # Delete a payment request.
    # @param id ID of the payment request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_payment_request_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.delete_payment_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.delete_payment_request"
      end
      # resource path
      local_var_path = '/payments/requests/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: PaymentsApi#delete_payment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get payment request details
    # @param id Id of the payment Request
    # @param [Hash] opts the optional parameters
    # @return [GetPaymentRequest]
    def get_payment_request(id, opts = {})
      data, _status_code, _headers = get_payment_request_with_http_info(id, opts)
      data
    end

    # Get payment request details
    # @param id Id of the payment Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetPaymentRequest, Fixnum, Hash)>] GetPaymentRequest data, response status code and response headers
    def get_payment_request_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.get_payment_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.get_payment_request"
      end
      # resource path
      local_var_path = '/payments/requests/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'GetPaymentRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
