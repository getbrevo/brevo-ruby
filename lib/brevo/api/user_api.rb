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
    
    # Update permission for a user
    # `Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `facebook_ads`:   - \"create_edit_delete\"   - \"schedule_pause\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"manage_owned_deals_tasks_companies\"   - \"manage_others_deals_tasks_companies\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\"  **Note**: - The privileges array remains the same as in the send invitation; the user simply needs to provide the permissions that need to be updated. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
    # @param update_permissions Values to update permissions for an invited user
    # @param [Hash] opts the optional parameters
    # @return [Inviteuser]
    def edit_user_permission(update_permissions, opts = {})
      data, _status_code, _headers = edit_user_permission_with_http_info(update_permissions, opts)
      data
    end

    # Update permission for a user
    # &#x60;Feature&#x60; - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  &#x60;Permission&#x60; - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - &#x60;email_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;sms_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;contacts&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;import\&quot;   - \&quot;export\&quot;   - \&quot;list_and_attributes\&quot;   - \&quot;forms\&quot; - &#x60;templates&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate\&quot; - &#x60;workflows&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate_pause\&quot;   - \&quot;settings\&quot; - &#x60;facebook_ads&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;schedule_pause\&quot; - &#x60;landing_pages&#x60;:   - \&quot;all\&quot; - &#x60;transactional_emails&#x60;:   - \&quot;settings\&quot;   - \&quot;logs\&quot; - &#x60;smtp_api&#x60;:   - \&quot;smtp\&quot;   - \&quot;api_keys\&quot;   - \&quot;authorized_ips\&quot; - &#x60;user_management&#x60;:   - \&quot;all\&quot; - &#x60;sales_platform&#x60;:   - \&quot;manage_owned_deals_tasks_companies\&quot;   - \&quot;manage_others_deals_tasks_companies\&quot;   - \&quot;reports\&quot;   - \&quot;settings\&quot; - &#x60;phone&#x60;:   - \&quot;all\&quot; - &#x60;conversations&#x60;:   - \&quot;access\&quot;   - \&quot;assign\&quot;   - \&quot;configure\&quot; - &#x60;senders_domains_dedicated_ips&#x60;:   - \&quot;senders_management\&quot;   - \&quot;domains_management\&quot;   - \&quot;dedicated_ips_management\&quot; - &#x60;push_notifications&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;send\&quot;   - \&quot;settings\&quot;  **Note**: - The privileges array remains the same as in the send invitation; the user simply needs to provide the permissions that need to be updated. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
    # @param update_permissions Values to update permissions for an invited user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Inviteuser, Fixnum, Hash)>] Inviteuser data, response status code and response headers
    def edit_user_permission_with_http_info(update_permissions, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.edit_user_permission ...'
      end
      # verify the required parameter 'update_permissions' is set
      if @api_client.config.client_side_validation && update_permissions.nil?
        fail ArgumentError, "Missing the required parameter 'update_permissions' when calling UserApi.edit_user_permission"
      end
      # resource path
      local_var_path = '/organization/user/update/permissions'

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
      post_body = @api_client.object_to_http_body(update_permissions)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Inviteuser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#edit_user_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
    # Send invitation to user
    # `Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `facebook_ads`:   - \"create_edit_delete\"   - \"schedule_pause\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"manage_owned_deals_tasks_companies\"   - \"manage_others_deals_tasks_companies\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\"  **Note**: - If `all_features_access: false` then only privileges are required otherwise if `true` then it's assumed that all permissions will be there for the invited user. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
    # @param send_invitation Values to create an invitation
    # @param [Hash] opts the optional parameters
    # @return [Inviteuser]
    def inviteuser(send_invitation, opts = {})
      data, _status_code, _headers = inviteuser_with_http_info(send_invitation, opts)
      data
    end

    # Send invitation to user
    # &#x60;Feature&#x60; - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  &#x60;Permission&#x60; - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - &#x60;email_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;sms_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;contacts&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;import\&quot;   - \&quot;export\&quot;   - \&quot;list_and_attributes\&quot;   - \&quot;forms\&quot; - &#x60;templates&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate\&quot; - &#x60;workflows&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate_pause\&quot;   - \&quot;settings\&quot; - &#x60;facebook_ads&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;schedule_pause\&quot; - &#x60;landing_pages&#x60;:   - \&quot;all\&quot; - &#x60;transactional_emails&#x60;:   - \&quot;settings\&quot;   - \&quot;logs\&quot; - &#x60;smtp_api&#x60;:   - \&quot;smtp\&quot;   - \&quot;api_keys\&quot;   - \&quot;authorized_ips\&quot; - &#x60;user_management&#x60;:   - \&quot;all\&quot; - &#x60;sales_platform&#x60;:   - \&quot;manage_owned_deals_tasks_companies\&quot;   - \&quot;manage_others_deals_tasks_companies\&quot;   - \&quot;reports\&quot;   - \&quot;settings\&quot; - &#x60;phone&#x60;:   - \&quot;all\&quot; - &#x60;conversations&#x60;:   - \&quot;access\&quot;   - \&quot;assign\&quot;   - \&quot;configure\&quot; - &#x60;senders_domains_dedicated_ips&#x60;:   - \&quot;senders_management\&quot;   - \&quot;domains_management\&quot;   - \&quot;dedicated_ips_management\&quot; - &#x60;push_notifications&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;send\&quot;   - \&quot;settings\&quot;  **Note**: - If &#x60;all_features_access: false&#x60; then only privileges are required otherwise if &#x60;true&#x60; then it&#39;s assumed that all permissions will be there for the invited user. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
    # @param send_invitation Values to create an invitation
    # @param [Hash] opts the optional parameters
    # @return [Array<(Inviteuser, Fixnum, Hash)>] Inviteuser data, response status code and response headers
    def inviteuser_with_http_info(send_invitation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.inviteuser ...'
      end
      # verify the required parameter 'send_invitation' is set
      if @api_client.config.client_side_validation && send_invitation.nil?
        fail ArgumentError, "Missing the required parameter 'send_invitation' when calling UserApi.inviteuser"
      end
      # resource path
      local_var_path = '/organization/user/invitation/send'

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
      post_body = @api_client.object_to_http_body(send_invitation)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Inviteuser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#inviteuser\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Revoke user permission
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [PutRevokeUserPermission]
    def put_revoke_user_permission(email, opts = {})
      data, _status_code, _headers = put_revoke_user_permission_with_http_info(email, opts)
      data
    end

    # Revoke user permission
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PutRevokeUserPermission, Fixnum, Hash)>] PutRevokeUserPermission data, response status code and response headers
    def put_revoke_user_permission_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.put_revoke_user_permission ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling UserApi.put_revoke_user_permission"
      end
      # resource path
      local_var_path = '/organization/user/invitation/revoke/{email}'.sub('{' + 'email' + '}', email.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PutRevokeUserPermission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#put_revoke_user_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resend / Cancel invitation
    # @param action action
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [Putresendcancelinvitation]
    def putresendcancelinvitation(action, email, opts = {})
      data, _status_code, _headers = putresendcancelinvitation_with_http_info(action, email, opts)
      data
    end

    # Resend / Cancel invitation
    # @param action action
    # @param email Email of the invited user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Putresendcancelinvitation, Fixnum, Hash)>] Putresendcancelinvitation data, response status code and response headers
    def putresendcancelinvitation_with_http_info(action, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.putresendcancelinvitation ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UserApi.putresendcancelinvitation"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['resend', 'cancel'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of resend, cancel"
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling UserApi.putresendcancelinvitation"
      end
      # resource path
      local_var_path = '/organization/user/invitation/{action}/{email}'.sub('{' + 'action' + '}', action.to_s).sub('{' + 'email' + '}', email.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Putresendcancelinvitation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#putresendcancelinvitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
