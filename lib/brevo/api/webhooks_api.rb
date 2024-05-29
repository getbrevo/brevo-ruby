=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module Brevo
  class WebhooksApi
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
    
    # Create a webhook
    # @param create_webhook Values to create a webhook
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_webhook(create_webhook, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(create_webhook, opts)
      data
    end

    # Create a webhook
    # @param create_webhook Values to create a webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_webhook_with_http_info(create_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'create_webhook' is set
      if @api_client.config.client_side_validation && create_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'create_webhook' when calling WebhooksApi.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

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
      post_body = @api_client.object_to_http_body(create_webhook)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a webhook
    # @param webhook_id Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(webhook_id, opts = {})
      delete_webhook_with_http_info(webhook_id, opts)
      nil
    end

    # Delete a webhook
    # @param webhook_id Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Export all webhook events
    # This endpoint will submit a request to get the history of webhooks in the CSV file. The link to download the CSV file will be sent to the webhook that was provided in the notifyURL.
    # @param export_webhook_history Values to submit for webhooks history
    # @param [Hash] opts the optional parameters
    # @return [CreatedProcessId]
    def export_webhooks_history(export_webhook_history, opts = {})
      data, _status_code, _headers = export_webhooks_history_with_http_info(export_webhook_history, opts)
      data
    end

    # Export all webhook events
    # This endpoint will submit a request to get the history of webhooks in the CSV file. The link to download the CSV file will be sent to the webhook that was provided in the notifyURL.
    # @param export_webhook_history Values to submit for webhooks history
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreatedProcessId, Fixnum, Hash)>] CreatedProcessId data, response status code and response headers
    def export_webhooks_history_with_http_info(export_webhook_history, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.export_webhooks_history ...'
      end
      # verify the required parameter 'export_webhook_history' is set
      if @api_client.config.client_side_validation && export_webhook_history.nil?
        fail ArgumentError, "Missing the required parameter 'export_webhook_history' when calling WebhooksApi.export_webhooks_history"
      end
      # resource path
      local_var_path = '/webhooks/export'

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
      post_body = @api_client.object_to_http_body(export_webhook_history)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatedProcessId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#export_webhooks_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a webhook details
    # @param webhook_id Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [GetWebhook]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook details
    # @param webhook_id Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetWebhook, Fixnum, Hash)>] GetWebhook data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
        :return_type => 'GetWebhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on webhook type (default to transactional)
    # @option opts [String] :sort Sort the results in the ascending/descending order of webhook creation (default to desc)
    # @return [GetWebhooks]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Get all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on webhook type
    # @option opts [String] :sort Sort the results in the ascending/descending order of webhook creation
    # @return [Array<(GetWebhooks, Fixnum, Hash)>] GetWebhooks data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks ...'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['marketing', 'transactional', 'inbound'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of marketing, transactional, inbound'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
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
        :return_type => 'GetWebhooks')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a webhook
    # @param webhook_id Id of the webhook
    # @param update_webhook Values to update a webhook
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_webhook(webhook_id, update_webhook, opts = {})
      update_webhook_with_http_info(webhook_id, update_webhook, opts)
      nil
    end

    # Update a webhook
    # @param webhook_id Id of the webhook
    # @param update_webhook Values to update a webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_webhook_with_http_info(webhook_id, update_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'update_webhook' is set
      if @api_client.config.client_side_validation && update_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'update_webhook' when calling WebhooksApi.update_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = @api_client.object_to_http_body(update_webhook)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
