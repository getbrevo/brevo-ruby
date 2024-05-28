=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@brevo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module Brevo
  class GetExtendedContactDetails
    # Email address of the contact for which you requested the details
    attr_accessor :email

    # ID of the contact for which you requested the details
    attr_accessor :id

    # Blacklist status for email campaigns (true=blacklisted, false=not blacklisted)
    attr_accessor :email_blacklisted

    # Blacklist status for SMS campaigns (true=blacklisted, false=not blacklisted)
    attr_accessor :sms_blacklisted

    # Creation UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # Last modification UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

    attr_accessor :list_ids

    attr_accessor :list_unsubscribed

    # Set of attributes of the contact
    attr_accessor :attributes

    attr_accessor :statistics

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'id' => :'id',
        :'email_blacklisted' => :'emailBlacklisted',
        :'sms_blacklisted' => :'smsBlacklisted',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt',
        :'list_ids' => :'listIds',
        :'list_unsubscribed' => :'listUnsubscribed',
        :'attributes' => :'attributes',
        :'statistics' => :'statistics'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email' => :'String',
        :'id' => :'Integer',
        :'email_blacklisted' => :'BOOLEAN',
        :'sms_blacklisted' => :'BOOLEAN',
        :'created_at' => :'String',
        :'modified_at' => :'String',
        :'list_ids' => :'Array<Integer>',
        :'list_unsubscribed' => :'Array<Integer>',
        :'attributes' => :'Object',
        :'statistics' => :'GetExtendedContactDetailsStatistics'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'emailBlacklisted')
        self.email_blacklisted = attributes[:'emailBlacklisted']
      end

      if attributes.has_key?(:'smsBlacklisted')
        self.sms_blacklisted = attributes[:'smsBlacklisted']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'modifiedAt')
        self.modified_at = attributes[:'modifiedAt']
      end

      if attributes.has_key?(:'listIds')
        if (value = attributes[:'listIds']).is_a?(Array)
          self.list_ids = value
        end
      end

      if attributes.has_key?(:'listUnsubscribed')
        if (value = attributes[:'listUnsubscribed']).is_a?(Array)
          self.list_unsubscribed = value
        end
      end

      if attributes.has_key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.has_key?(:'statistics')
        self.statistics = attributes[:'statistics']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @email_blacklisted.nil?
        invalid_properties.push('invalid value for "email_blacklisted", email_blacklisted cannot be nil.')
      end

      if @sms_blacklisted.nil?
        invalid_properties.push('invalid value for "sms_blacklisted", sms_blacklisted cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @modified_at.nil?
        invalid_properties.push('invalid value for "modified_at", modified_at cannot be nil.')
      end

      if @list_ids.nil?
        invalid_properties.push('invalid value for "list_ids", list_ids cannot be nil.')
      end

      if @attributes.nil?
        invalid_properties.push('invalid value for "attributes", attributes cannot be nil.')
      end

      if @statistics.nil?
        invalid_properties.push('invalid value for "statistics", statistics cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @email_blacklisted.nil?
      return false if @sms_blacklisted.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      return false if @list_ids.nil?
      return false if @attributes.nil?
      return false if @statistics.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          id == o.id &&
          email_blacklisted == o.email_blacklisted &&
          sms_blacklisted == o.sms_blacklisted &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          list_ids == o.list_ids &&
          list_unsubscribed == o.list_unsubscribed &&
          attributes == o.attributes &&
          statistics == o.statistics
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email, id, email_blacklisted, sms_blacklisted, created_at, modified_at, list_ids, list_unsubscribed, attributes, statistics].hash
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
