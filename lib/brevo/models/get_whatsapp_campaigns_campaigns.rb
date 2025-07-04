=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  |   | 422  | Error. Unprocessable Entity | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module Brevo
  class GetWhatsappCampaignsCampaigns
    # ID of the WhatsApp Campaign
    attr_accessor :id

    # Name of the WhatsApp Campaign
    attr_accessor :campaign_name

    # Id of the WhatsApp template
    attr_accessor :template_id

    # Status of the WhatsApp Campaign
    attr_accessor :campaign_status

    # UTC date-time on which WhatsApp campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format
    attr_accessor :scheduled_at

    # Error reason in the campaign creation
    attr_accessor :error_reason

    # Count of invalidated contacts
    attr_accessor :invalidated_contacts

    # Read percentage of the the WhatsApp campaign created
    attr_accessor :read_percentage

    attr_accessor :stats

    # Creation UTC date-time of the WhatsApp campaign (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # UTC date-time of last modification of the whatsapp template (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

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
        :'id' => :'id',
        :'campaign_name' => :'campaignName',
        :'template_id' => :'templateId',
        :'campaign_status' => :'campaignStatus',
        :'scheduled_at' => :'scheduledAt',
        :'error_reason' => :'errorReason',
        :'invalidated_contacts' => :'invalidatedContacts',
        :'read_percentage' => :'readPercentage',
        :'stats' => :'stats',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'campaign_name' => :'String',
        :'template_id' => :'String',
        :'campaign_status' => :'String',
        :'scheduled_at' => :'String',
        :'error_reason' => :'String',
        :'invalidated_contacts' => :'Integer',
        :'read_percentage' => :'Float',
        :'stats' => :'WhatsappCampStats',
        :'created_at' => :'String',
        :'modified_at' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'campaignName')
        self.campaign_name = attributes[:'campaignName']
      end

      if attributes.has_key?(:'templateId')
        self.template_id = attributes[:'templateId']
      end

      if attributes.has_key?(:'campaignStatus')
        self.campaign_status = attributes[:'campaignStatus']
      end

      if attributes.has_key?(:'scheduledAt')
        self.scheduled_at = attributes[:'scheduledAt']
      end

      if attributes.has_key?(:'errorReason')
        self.error_reason = attributes[:'errorReason']
      end

      if attributes.has_key?(:'invalidatedContacts')
        self.invalidated_contacts = attributes[:'invalidatedContacts']
      end

      if attributes.has_key?(:'readPercentage')
        self.read_percentage = attributes[:'readPercentage']
      end

      if attributes.has_key?(:'stats')
        self.stats = attributes[:'stats']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'modifiedAt')
        self.modified_at = attributes[:'modifiedAt']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @campaign_name.nil?
        invalid_properties.push('invalid value for "campaign_name", campaign_name cannot be nil.')
      end

      if @template_id.nil?
        invalid_properties.push('invalid value for "template_id", template_id cannot be nil.')
      end

      if @campaign_status.nil?
        invalid_properties.push('invalid value for "campaign_status", campaign_status cannot be nil.')
      end

      if @scheduled_at.nil?
        invalid_properties.push('invalid value for "scheduled_at", scheduled_at cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @modified_at.nil?
        invalid_properties.push('invalid value for "modified_at", modified_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @campaign_name.nil?
      return false if @template_id.nil?
      return false if @campaign_status.nil?
      campaign_status_validator = EnumAttributeValidator.new('String', ['draft', 'scheduled', 'pending', 'approved', 'running', 'suspended', 'rejected', 'sent'])
      return false unless campaign_status_validator.valid?(@campaign_status)
      return false if @scheduled_at.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_status Object to be assigned
    def campaign_status=(campaign_status)
      validator = EnumAttributeValidator.new('String', ['draft', 'scheduled', 'pending', 'approved', 'running', 'suspended', 'rejected', 'sent'])
      unless validator.valid?(campaign_status)
        fail ArgumentError, 'invalid value for "campaign_status", must be one of #{validator.allowable_values}.'
      end
      @campaign_status = campaign_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          campaign_name == o.campaign_name &&
          template_id == o.template_id &&
          campaign_status == o.campaign_status &&
          scheduled_at == o.scheduled_at &&
          error_reason == o.error_reason &&
          invalidated_contacts == o.invalidated_contacts &&
          read_percentage == o.read_percentage &&
          stats == o.stats &&
          created_at == o.created_at &&
          modified_at == o.modified_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, campaign_name, template_id, campaign_status, scheduled_at, error_reason, invalidated_contacts, read_percentage, stats, created_at, modified_at].hash
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
        temp_model = Brevo.const_get(type).new
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
