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
  # Represents a record of a past transaction, including status and key timestamps.
  class TransactionHistory
    # The transaction amount.
    attr_accessor :amount

    # Expiration date of the balance associated with this transaction.
    attr_accessor :balance_expiration_date

    # Timestamp when the transaction was canceled, if applicable.
    attr_accessor :cancelled_at

    # Timestamp when the transaction was successfully completed.
    attr_accessor :completed_at

    # Timestamp when the transaction was initiated.
    attr_accessor :created_at

    # Unique identifier of the transaction.
    attr_accessor :id

    # Optional metadata associated with the transaction.
    attr_accessor :meta

    # Reason for rejection, if the transaction was declined.
    attr_accessor :reject_reason

    # Timestamp when the transaction was rejected.
    attr_accessor :rejected_at

    # Current status of the transaction (e.g., pending, completed, rejected).
    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'balance_expiration_date' => :'balanceExpirationDate',
        :'cancelled_at' => :'cancelledAt',
        :'completed_at' => :'completedAt',
        :'created_at' => :'createdAt',
        :'id' => :'id',
        :'meta' => :'meta',
        :'reject_reason' => :'rejectReason',
        :'rejected_at' => :'rejectedAt',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'balance_expiration_date' => :'String',
        :'cancelled_at' => :'String',
        :'completed_at' => :'String',
        :'created_at' => :'String',
        :'id' => :'String',
        :'meta' => :'Object',
        :'reject_reason' => :'String',
        :'rejected_at' => :'String',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'balanceExpirationDate')
        self.balance_expiration_date = attributes[:'balanceExpirationDate']
      end

      if attributes.has_key?(:'cancelledAt')
        self.cancelled_at = attributes[:'cancelledAt']
      end

      if attributes.has_key?(:'completedAt')
        self.completed_at = attributes[:'completedAt']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.has_key?(:'rejectReason')
        self.reject_reason = attributes[:'rejectReason']
      end

      if attributes.has_key?(:'rejectedAt')
        self.rejected_at = attributes[:'rejectedAt']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          balance_expiration_date == o.balance_expiration_date &&
          cancelled_at == o.cancelled_at &&
          completed_at == o.completed_at &&
          created_at == o.created_at &&
          id == o.id &&
          meta == o.meta &&
          reject_reason == o.reject_reason &&
          rejected_at == o.rejected_at &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount, balance_expiration_date, cancelled_at, completed_at, created_at, id, meta, reject_reason, rejected_at, status].hash
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
