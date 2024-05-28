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

# Unit tests for Brevo::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = Brevo::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@instance).to be_instance_of(Brevo::UserApi)
    end
  end

  # unit tests for edit_user_permission
  # Update permission for a user
  # &#x60;Feature&#x60; - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  &#x60;Permission&#x60; - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - &#x60;email_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;sms_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;contacts&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;import\&quot;   - \&quot;export\&quot;   - \&quot;list_and_attributes\&quot;   - \&quot;forms\&quot; - &#x60;templates&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate\&quot; - &#x60;workflows&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate_pause\&quot;   - \&quot;settings\&quot; - &#x60;facebook_ads&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;schedule_pause\&quot; - &#x60;landing_pages&#x60;:   - \&quot;all\&quot; - &#x60;transactional_emails&#x60;:   - \&quot;settings\&quot;   - \&quot;logs\&quot; - &#x60;smtp_api&#x60;:   - \&quot;smtp\&quot;   - \&quot;api_keys\&quot;   - \&quot;authorized_ips\&quot; - &#x60;user_management&#x60;:   - \&quot;all\&quot; - &#x60;sales_platform&#x60;:   - \&quot;manage_owned_deals_tasks_companies\&quot;   - \&quot;manage_others_deals_tasks_companies\&quot;   - \&quot;reports\&quot;   - \&quot;settings\&quot; - &#x60;phone&#x60;:   - \&quot;all\&quot; - &#x60;conversations&#x60;:   - \&quot;access\&quot;   - \&quot;assign\&quot;   - \&quot;configure\&quot; - &#x60;senders_domains_dedicated_ips&#x60;:   - \&quot;senders_management\&quot;   - \&quot;domains_management\&quot;   - \&quot;dedicated_ips_management\&quot; - &#x60;push_notifications&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;send\&quot;   - \&quot;settings\&quot;  **Note**: - The privileges array remains the same as in the send invitation; the user simply needs to provide the permissions that need to be updated. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
  # @param update_permissions Values to update permissions for an invited user
  # @param [Hash] opts the optional parameters
  # @return [Inviteuser]
  describe 'edit_user_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invited_users_list
  # Get the list of all your users
  # @param [Hash] opts the optional parameters
  # @return [GetInvitedUsersList]
  describe 'get_invited_users_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_permission
  # Check user permission
  # @param email Email of the invited user.
  # @param [Hash] opts the optional parameters
  # @return [GetUserPermission]
  describe 'get_user_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inviteuser
  # Send invitation to user
  # &#x60;Feature&#x60; - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  &#x60;Permission&#x60; - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - &#x60;email_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;sms_campaigns&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;send_schedule_suspend\&quot; - &#x60;contacts&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;import\&quot;   - \&quot;export\&quot;   - \&quot;list_and_attributes\&quot;   - \&quot;forms\&quot; - &#x60;templates&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate\&quot; - &#x60;workflows&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;activate_deactivate_pause\&quot;   - \&quot;settings\&quot; - &#x60;facebook_ads&#x60;:   - \&quot;create_edit_delete\&quot;   - \&quot;schedule_pause\&quot; - &#x60;landing_pages&#x60;:   - \&quot;all\&quot; - &#x60;transactional_emails&#x60;:   - \&quot;settings\&quot;   - \&quot;logs\&quot; - &#x60;smtp_api&#x60;:   - \&quot;smtp\&quot;   - \&quot;api_keys\&quot;   - \&quot;authorized_ips\&quot; - &#x60;user_management&#x60;:   - \&quot;all\&quot; - &#x60;sales_platform&#x60;:   - \&quot;manage_owned_deals_tasks_companies\&quot;   - \&quot;manage_others_deals_tasks_companies\&quot;   - \&quot;reports\&quot;   - \&quot;settings\&quot; - &#x60;phone&#x60;:   - \&quot;all\&quot; - &#x60;conversations&#x60;:   - \&quot;access\&quot;   - \&quot;assign\&quot;   - \&quot;configure\&quot; - &#x60;senders_domains_dedicated_ips&#x60;:   - \&quot;senders_management\&quot;   - \&quot;domains_management\&quot;   - \&quot;dedicated_ips_management\&quot; - &#x60;push_notifications&#x60;:   - \&quot;view\&quot;   - \&quot;create_edit_delete\&quot;   - \&quot;send\&quot;   - \&quot;settings\&quot;  **Note**: - If &#x60;all_features_access: false&#x60; then only privileges are required otherwise if &#x60;true&#x60; then it&#39;s assumed that all permissions will be there for the invited user. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 
  # @param send_invitation Values to create an invitation
  # @param [Hash] opts the optional parameters
  # @return [Inviteuser]
  describe 'inviteuser test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_revoke_user_permission
  # Revoke user permission
  # @param email Email of the invited user.
  # @param [Hash] opts the optional parameters
  # @return [PutRevokeUserPermission]
  describe 'put_revoke_user_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for putresendcancelinvitation
  # Resend / Cancel invitation
  # @param action action
  # @param email Email of the invited user.
  # @param [Hash] opts the optional parameters
  # @return [Putresendcancelinvitation]
  describe 'putresendcancelinvitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
