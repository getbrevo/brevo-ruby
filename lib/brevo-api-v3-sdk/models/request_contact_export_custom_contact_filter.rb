=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module BrevoApiV3Sdk
  # Set the filter for the contacts to be exported.
  class RequestContactExportCustomContactFilter
    # Mandatory if neither actionForEmailCampaigns nor actionForSmsCampaigns is passed. This will export the contacts on the basis of provided action applied on contacts as per the list id. * allContacts - Fetch the list of all contacts for a particular list. * subscribed & unsubscribed - Fetch the list of subscribed / unsubscribed (blacklisted via any means) contacts for a particular list. * unsubscribedPerList - Fetch the list of contacts that are unsubscribed from a particular list only. 
    attr_accessor :action_for_contacts

    # Mandatory if neither actionForContacts nor actionForSmsCampaigns is passed. This will export the contacts on the basis of provided action applied on email campaigns. * openers & nonOpeners - emailCampaignId is mandatory. Fetch the list of readers / non-readers for a particular email campaign. * clickers & nonClickers - emailCampaignId is mandatory. Fetch the list of clickers / non-clickers for a particular email campaign. * unsubscribed - emailCampaignId is mandatory. Fetch the list of all unsubscribed (blacklisted via any means) contacts for a particular email campaign. * hardBounces & softBounces - emailCampaignId is optional. Fetch the list of hard bounces / soft bounces for a particular / all email campaign(s). 
    attr_accessor :action_for_email_campaigns

    # Mandatory if neither actionForContacts nor actionForEmailCampaigns is passed. This will export the contacts on the basis of provided action applied on sms campaigns. * unsubscribed - Fetch the list of all unsubscribed (blacklisted via any means) contacts for all / particular sms campaigns. * hardBounces & softBounces - Fetch the list of hard bounces / soft bounces for all / particular sms campaigns. 
    attr_accessor :action_for_sms_campaigns

    # Mandatory if actionForContacts is passed, ignored otherwise. Id of the list for which the corresponding action shall be applied in the filter.
    attr_accessor :list_id

    # Considered only if actionForEmailCampaigns is passed, ignored otherwise. Mandatory if action is one of the following - openers, nonOpeners, clickers, nonClickers, unsubscribed. The id of the email campaign for which the corresponding action shall be applied in the filter.
    attr_accessor :email_campaign_id

    # Considered only if actionForSmsCampaigns is passed, ignored otherwise. The id of sms campaign for which the corresponding action shall be applied in the filter.
    attr_accessor :sms_campaign_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action_for_contacts' => :'actionForContacts',
        :'action_for_email_campaigns' => :'actionForEmailCampaigns',
        :'action_for_sms_campaigns' => :'actionForSmsCampaigns',
        :'list_id' => :'listId',
        :'email_campaign_id' => :'emailCampaignId',
        :'sms_campaign_id' => :'smsCampaignId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action_for_contacts' => :'String',
        :'action_for_email_campaigns' => :'String',
        :'action_for_sms_campaigns' => :'String',
        :'list_id' => :'Integer',
        :'email_campaign_id' => :'Integer',
        :'sms_campaign_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'actionForContacts')
        self.action_for_contacts = attributes[:'actionForContacts']
      end

      if attributes.has_key?(:'actionForEmailCampaigns')
        self.action_for_email_campaigns = attributes[:'actionForEmailCampaigns']
      end

      if attributes.has_key?(:'actionForSmsCampaigns')
        self.action_for_sms_campaigns = attributes[:'actionForSmsCampaigns']
      end

      if attributes.has_key?(:'listId')
        self.list_id = attributes[:'listId']
      end

      if attributes.has_key?(:'emailCampaignId')
        self.email_campaign_id = attributes[:'emailCampaignId']
      end

      if attributes.has_key?(:'smsCampaignId')
        self.sms_campaign_id = attributes[:'smsCampaignId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      action_for_contacts_validator = EnumAttributeValidator.new('String', ['allContacts', 'subscribed', 'unsubscribed', 'unsubscribedPerList'])
      return false unless action_for_contacts_validator.valid?(@action_for_contacts)
      action_for_email_campaigns_validator = EnumAttributeValidator.new('String', ['openers', 'nonOpeners', 'clickers', 'nonClickers', 'unsubscribed', 'hardBounces', 'softBounces'])
      return false unless action_for_email_campaigns_validator.valid?(@action_for_email_campaigns)
      action_for_sms_campaigns_validator = EnumAttributeValidator.new('String', ['hardBounces', 'softBounces', 'unsubscribed'])
      return false unless action_for_sms_campaigns_validator.valid?(@action_for_sms_campaigns)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_contacts Object to be assigned
    def action_for_contacts=(action_for_contacts)
      validator = EnumAttributeValidator.new('String', ['allContacts', 'subscribed', 'unsubscribed', 'unsubscribedPerList'])
      unless validator.valid?(action_for_contacts)
        fail ArgumentError, 'invalid value for "action_for_contacts", must be one of #{validator.allowable_values}.'
      end
      @action_for_contacts = action_for_contacts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_email_campaigns Object to be assigned
    def action_for_email_campaigns=(action_for_email_campaigns)
      validator = EnumAttributeValidator.new('String', ['openers', 'nonOpeners', 'clickers', 'nonClickers', 'unsubscribed', 'hardBounces', 'softBounces'])
      unless validator.valid?(action_for_email_campaigns)
        fail ArgumentError, 'invalid value for "action_for_email_campaigns", must be one of #{validator.allowable_values}.'
      end
      @action_for_email_campaigns = action_for_email_campaigns
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_sms_campaigns Object to be assigned
    def action_for_sms_campaigns=(action_for_sms_campaigns)
      validator = EnumAttributeValidator.new('String', ['hardBounces', 'softBounces', 'unsubscribed'])
      unless validator.valid?(action_for_sms_campaigns)
        fail ArgumentError, 'invalid value for "action_for_sms_campaigns", must be one of #{validator.allowable_values}.'
      end
      @action_for_sms_campaigns = action_for_sms_campaigns
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_for_contacts == o.action_for_contacts &&
          action_for_email_campaigns == o.action_for_email_campaigns &&
          action_for_sms_campaigns == o.action_for_sms_campaigns &&
          list_id == o.list_id &&
          email_campaign_id == o.email_campaign_id &&
          sms_campaign_id == o.sms_campaign_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action_for_contacts, action_for_email_campaigns, action_for_sms_campaigns, list_id, email_campaign_id, sms_campaign_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BrevoApiV3Sdk.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
