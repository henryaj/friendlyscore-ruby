=begin
#FriendlyScore Public API

#Public API for communication with FriendlyScore

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module FriendlyscoreClient
  class ConsentData2
    # Unique identification as assigned to identify the account access consent resource.
    attr_accessor :consent_id

    # Date and time at which the resource was created. All dates in the JSON payloads are represented in UNIX timestamp format.
    attr_accessor :creation_date_time

    # Consent status, one of: Rejected, AwaitingAuthorisation, Authorised, Revoked.
    attr_accessor :status

    # Date and time at which the resource status was updated. All dates in the JSON payloads are represented in UNIX timestamp format.
    attr_accessor :status_update_date_time

    # Specified date and time the permissions will expire. If this is not populated, the permissions will be open ended. All dates in the JSON payloads are represented in UNIX timestamp format.
    attr_accessor :expiration_date_time

    # Specified start date and time for the transaction query period. If this is not populated, the start date will be open ended, and data will be returned from the earliest available transaction. All dates in the JSON payloads are represented in UNIX timestamp format.
    attr_accessor :transaction_from_date_time

    # Specified end date and time for the transaction query period. If this is not populated, the end date will be open ended, and data will be returned to the latest available transaction. All dates in the JSON payloads are represented in UNIX timestamp format.
    attr_accessor :transaction_to_date_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'consent_id' => :'consent_id',
        :'creation_date_time' => :'creation_date_time',
        :'status' => :'status',
        :'status_update_date_time' => :'status_update_date_time',
        :'expiration_date_time' => :'expiration_date_time',
        :'transaction_from_date_time' => :'transaction_from_date_time',
        :'transaction_to_date_time' => :'transaction_to_date_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'consent_id' => :'String',
        :'creation_date_time' => :'DateTime',
        :'status' => :'String',
        :'status_update_date_time' => :'DateTime',
        :'expiration_date_time' => :'DateTime',
        :'transaction_from_date_time' => :'DateTime',
        :'transaction_to_date_time' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'consent_id')
        self.consent_id = attributes[:'consent_id']
      end

      if attributes.has_key?(:'creation_date_time')
        self.creation_date_time = attributes[:'creation_date_time']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'status_update_date_time')
        self.status_update_date_time = attributes[:'status_update_date_time']
      end

      if attributes.has_key?(:'expiration_date_time')
        self.expiration_date_time = attributes[:'expiration_date_time']
      end

      if attributes.has_key?(:'transaction_from_date_time')
        self.transaction_from_date_time = attributes[:'transaction_from_date_time']
      end

      if attributes.has_key?(:'transaction_to_date_time')
        self.transaction_to_date_time = attributes[:'transaction_to_date_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @consent_id.nil?
        invalid_properties.push('invalid value for "consent_id", consent_id cannot be nil.')
      end

      if @consent_id.to_s.length < 1
        invalid_properties.push('invalid value for "consent_id", the character length must be great than or equal to 1.')
      end

      if @creation_date_time.nil?
        invalid_properties.push('invalid value for "creation_date_time", creation_date_time cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @status_update_date_time.nil?
        invalid_properties.push('invalid value for "status_update_date_time", status_update_date_time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @consent_id.nil?
      return false if @consent_id.to_s.length < 1
      return false if @creation_date_time.nil?
      return false if @status.nil?
      return false if @status_update_date_time.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] consent_id Value to be assigned
    def consent_id=(consent_id)
      if consent_id.nil?
        fail ArgumentError, 'consent_id cannot be nil'
      end

      if consent_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "consent_id", the character length must be great than or equal to 1.'
      end

      @consent_id = consent_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          consent_id == o.consent_id &&
          creation_date_time == o.creation_date_time &&
          status == o.status &&
          status_update_date_time == o.status_update_date_time &&
          expiration_date_time == o.expiration_date_time &&
          transaction_from_date_time == o.transaction_from_date_time &&
          transaction_to_date_time == o.transaction_to_date_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [consent_id, creation_date_time, status, status_update_date_time, expiration_date_time, transaction_from_date_time, transaction_to_date_time].hash
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
        temp_model = FriendlyscoreClient.const_get(type).new
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
