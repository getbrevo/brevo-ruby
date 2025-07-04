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
  class RewardApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get code count
    # Get code count
    # @param pid Loyalty Program ID
    # @param cpid Code Pool ID
    # @param [Hash] opts the optional parameters
    # @return [MainCodeCountHttpResponse]
    def get_code_count(pid, cpid, opts = {})
      data, _status_code, _headers = get_code_count_with_http_info(pid, cpid, opts)
      data
    end

    # Get code count
    # Get code count
    # @param pid Loyalty Program ID
    # @param cpid Code Pool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainCodeCountHttpResponse, Fixnum, Hash)>] MainCodeCountHttpResponse data, response status code and response headers
    def get_code_count_with_http_info(pid, cpid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.get_code_count ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.get_code_count"
      end
      # verify the required parameter 'cpid' is set
      if @api_client.config.client_side_validation && cpid.nil?
        fail ArgumentError, "Missing the required parameter 'cpid' when calling RewardApi.get_code_count"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/code-pools/{cpid}/codes-count'.sub('{' + 'pid' + '}', pid.to_s).sub('{' + 'cpid' + '}', cpid.to_s)

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
        :return_type => 'MainCodeCountHttpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#get_code_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Reward Page API
    # Returns a reward page
    # @param pid Loyalty Program ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Page size (default to 25)
    # @option opts [Integer] :offset Pagination offset (default to 0)
    # @option opts [String] :state State of the reward (default to all)
    # @option opts [String] :version Version (default to draft)
    # @return [MainRewardPage]
    def loyalty_offer_programs_pid_offers_get(pid, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_offers_get_with_http_info(pid, opts)
      data
    end

    # Get Reward Page API
    # Returns a reward page
    # @param pid Loyalty Program ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Page size
    # @option opts [Integer] :offset Pagination offset
    # @option opts [String] :state State of the reward
    # @option opts [String] :version Version
    # @return [Array<(MainRewardPage, Fixnum, Hash)>] MainRewardPage data, response status code and response headers
    def loyalty_offer_programs_pid_offers_get_with_http_info(pid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_offers_get ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_offers_get"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardApi.loyalty_offer_programs_pid_offers_get, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardApi.loyalty_offer_programs_pid_offers_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'version'] && !['active', 'draft'].include?(opts[:'version'])
        fail ArgumentError, 'invalid value for "version", must be one of active, draft'
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/offers'.sub('{' + 'pid' + '}', pid.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

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
        :return_type => 'MainRewardPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_offers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a reward
    # Creates a new reward in loyalty program.
    # @param pid Loyalty Program ID
    # @param payload Reward creation payload
    # @param [Hash] opts the optional parameters
    # @return [MainCreateRewardResponse]
    def loyalty_offer_programs_pid_offers_post(pid, payload, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_offers_post_with_http_info(pid, payload, opts)
      data
    end

    # Create a reward
    # Creates a new reward in loyalty program.
    # @param pid Loyalty Program ID
    # @param payload Reward creation payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainCreateRewardResponse, Fixnum, Hash)>] MainCreateRewardResponse data, response status code and response headers
    def loyalty_offer_programs_pid_offers_post_with_http_info(pid, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_offers_post ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_offers_post"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling RewardApi.loyalty_offer_programs_pid_offers_post"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/offers'.sub('{' + 'pid' + '}', pid.to_s)

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
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MainCreateRewardResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_offers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a voucher
    # Create a voucher and attribute it to a specific membership.
    # @param pid Loyalty Program ID
    # @param payload Voucher creation payload
    # @param [Hash] opts the optional parameters
    # @return [MainRewardAttribution]
    def loyalty_offer_programs_pid_rewards_attribute_post(pid, payload, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_attribute_post_with_http_info(pid, payload, opts)
      data
    end

    # Create a voucher
    # Create a voucher and attribute it to a specific membership.
    # @param pid Loyalty Program ID
    # @param payload Voucher creation payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainRewardAttribution, Fixnum, Hash)>] MainRewardAttribution data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_attribute_post_with_http_info(pid, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_attribute_post ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_attribute_post"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling RewardApi.loyalty_offer_programs_pid_rewards_attribute_post"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/attribute'.sub('{' + 'pid' + '}', pid.to_s)

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
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MainRewardAttribution')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_attribute_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create redeem voucher request
    # Creates a request to redeem a voucher.
    # @param pid Loyalty Program ID
    # @param payload Redeem transaction creation payload
    # @param [Hash] opts the optional parameters
    # @return [MainRedeem]
    def loyalty_offer_programs_pid_rewards_redeem_post(pid, payload, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_redeem_post_with_http_info(pid, payload, opts)
      data
    end

    # Create redeem voucher request
    # Creates a request to redeem a voucher.
    # @param pid Loyalty Program ID
    # @param payload Redeem transaction creation payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainRedeem, Fixnum, Hash)>] MainRedeem data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_redeem_post_with_http_info(pid, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_redeem_post ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_redeem_post"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling RewardApi.loyalty_offer_programs_pid_rewards_redeem_post"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/redeem'.sub('{' + 'pid' + '}', pid.to_s)

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
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MainRedeem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_redeem_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Complete redeem voucher request
    # Completes voucher redeem request.
    # @param pid Loyalty Program ID
    # @param tid Redeem transaction ID
    # @param [Hash] opts the optional parameters
    # @return [MainRedeem]
    def loyalty_offer_programs_pid_rewards_redeem_tid_complete_post(pid, tid, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_redeem_tid_complete_post_with_http_info(pid, tid, opts)
      data
    end

    # Complete redeem voucher request
    # Completes voucher redeem request.
    # @param pid Loyalty Program ID
    # @param tid Redeem transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainRedeem, Fixnum, Hash)>] MainRedeem data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_redeem_tid_complete_post_with_http_info(pid, tid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_redeem_tid_complete_post ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_redeem_tid_complete_post"
      end
      # verify the required parameter 'tid' is set
      if @api_client.config.client_side_validation && tid.nil?
        fail ArgumentError, "Missing the required parameter 'tid' when calling RewardApi.loyalty_offer_programs_pid_rewards_redeem_tid_complete_post"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/redeem/{tid}/complete'.sub('{' + 'pid' + '}', pid.to_s).sub('{' + 'tid' + '}', tid.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MainRedeem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_redeem_tid_complete_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Revoke vouchers
    # Revoke attributed vouchers.
    # @param pid Loyalty Program ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attributed_reward_ids Reward Attribution IDs (comma seperated)
    # @return [String]
    def loyalty_offer_programs_pid_rewards_revoke_delete(pid, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_revoke_delete_with_http_info(pid, opts)
      data
    end

    # Revoke vouchers
    # Revoke attributed vouchers.
    # @param pid Loyalty Program ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attributed_reward_ids Reward Attribution IDs (comma seperated)
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_revoke_delete_with_http_info(pid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_revoke_delete ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_revoke_delete"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/revoke'.sub('{' + 'pid' + '}', pid.to_s)

      # query parameters
      query_params = {}
      query_params[:'attributedRewardIds'] = opts[:'attributed_reward_ids'] if !opts[:'attributed_reward_ids'].nil?

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
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_revoke_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get reward information
    # Returns reward information.
    # @param pid Loyalty Program ID
    # @param rid Reward ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Version (default to draft)
    # @return [MainReward]
    def loyalty_offer_programs_pid_rewards_rid_get(pid, rid, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_rid_get_with_http_info(pid, rid, opts)
      data
    end

    # Get reward information
    # Returns reward information.
    # @param pid Loyalty Program ID
    # @param rid Reward ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Version
    # @return [Array<(MainReward, Fixnum, Hash)>] MainReward data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_rid_get_with_http_info(pid, rid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_rid_get ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_rid_get"
      end
      # verify the required parameter 'rid' is set
      if @api_client.config.client_side_validation && rid.nil?
        fail ArgumentError, "Missing the required parameter 'rid' when calling RewardApi.loyalty_offer_programs_pid_rewards_rid_get"
      end
      if @api_client.config.client_side_validation && opts[:'version'] && !['active', 'draft'].include?(opts[:'version'])
        fail ArgumentError, 'invalid value for "version", must be one of active, draft'
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/{rid}'.sub('{' + 'pid' + '}', pid.to_s).sub('{' + 'rid' + '}', rid.to_s)

      # query parameters
      query_params = {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

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
        :return_type => 'MainReward')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_rid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validate a reward
    # Validates a reward.
    # @param pid Loyalty Program ID
    # @param body Reward validation payload
    # @param [Hash] opts the optional parameters
    # @return [MainRewardValidate]
    def loyalty_offer_programs_pid_rewards_validate_post(pid, body, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_rewards_validate_post_with_http_info(pid, body, opts)
      data
    end

    # Validate a reward
    # Validates a reward.
    # @param pid Loyalty Program ID
    # @param body Reward validation payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(MainRewardValidate, Fixnum, Hash)>] MainRewardValidate data, response status code and response headers
    def loyalty_offer_programs_pid_rewards_validate_post_with_http_info(pid, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_rewards_validate_post ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_rewards_validate_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RewardApi.loyalty_offer_programs_pid_rewards_validate_post"
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/rewards/validate'.sub('{' + 'pid' + '}', pid.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MainRewardValidate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_rewards_validate_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get voucher for a contact
    # Get voucher for a contact
    # @param pid Loyalty Program ID
    # @param contact_id Contact ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Page size (default to 25)
    # @option opts [Integer] :offset Pagination offset (default to 0)
    # @option opts [String] :sort Sort order (default to desc)
    # @option opts [String] :sort_field Sort field (default to updatedAt)
    # @option opts [String] :metadata_key_value Metadata value for a Key filter
    # @option opts [String] :reward_id Reward ID
    # @return [MainModelContactRewardsResp]
    def loyalty_offer_programs_pid_vouchers_get(pid, contact_id, opts = {})
      data, _status_code, _headers = loyalty_offer_programs_pid_vouchers_get_with_http_info(pid, contact_id, opts)
      data
    end

    # Get voucher for a contact
    # Get voucher for a contact
    # @param pid Loyalty Program ID
    # @param contact_id Contact ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Page size
    # @option opts [Integer] :offset Pagination offset
    # @option opts [String] :sort Sort order
    # @option opts [String] :sort_field Sort field
    # @option opts [String] :metadata_key_value Metadata value for a Key filter
    # @option opts [String] :reward_id Reward ID
    # @return [Array<(MainModelContactRewardsResp, Fixnum, Hash)>] MainModelContactRewardsResp data, response status code and response headers
    def loyalty_offer_programs_pid_vouchers_get_with_http_info(pid, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardApi.loyalty_offer_programs_pid_vouchers_get ...'
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling RewardApi.loyalty_offer_programs_pid_vouchers_get"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling RewardApi.loyalty_offer_programs_pid_vouchers_get"
      end
      if @api_client.config.client_side_validation && contact_id < 1
        fail ArgumentError, 'invalid value for "contact_id" when calling RewardApi.loyalty_offer_programs_pid_vouchers_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardApi.loyalty_offer_programs_pid_vouchers_get, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardApi.loyalty_offer_programs_pid_vouchers_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RewardApi.loyalty_offer_programs_pid_vouchers_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'sort_field'] && !['updatedAt', 'createdAt'].include?(opts[:'sort_field'])
        fail ArgumentError, 'invalid value for "sort_field", must be one of updatedAt, createdAt'
      end
      # resource path
      local_var_path = '/loyalty/offer/programs/{pid}/vouchers'.sub('{' + 'pid' + '}', pid.to_s)

      # query parameters
      query_params = {}
      query_params[:'contactId'] = contact_id
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sortField'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'metadata[key][value]'] = opts[:'metadata_key_value'] if !opts[:'metadata_key_value'].nil?
      query_params[:'rewardId'] = opts[:'reward_id'] if !opts[:'reward_id'].nil?

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
        :return_type => 'MainModelContactRewardsResp')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardApi#loyalty_offer_programs_pid_vouchers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
