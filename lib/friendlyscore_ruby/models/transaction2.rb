=begin
#FriendlyScore Public API

#Public API for communication with FriendlyScore

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module FriendlyscoreClient
  class Transaction2
    # Transaction ID
    attr_accessor :id

    # Transaction ID from the original data source. Must be unique for associated user and account.
    attr_accessor :external_transaction_id

    # Transaction name or description
    attr_accessor :name

    # Transaction type, if available
    attr_accessor :type

    # Amount of associated currency (positive for income and negative for expenditure)
    attr_accessor :amount

    attr_accessor :balance

    # Currency code (compatible with ISO 4217)
    attr_accessor :currency

    # Transaction status (compatible with OpenBanking 3.1 specification)
    attr_accessor :status

    # Slug of the associated bank
    attr_accessor :bank_slug

    # Number of the associated account
    attr_accessor :account_number

    # Category of the transaction
    attr_accessor :category

    # Category type
    attr_accessor :category_type

    # Address line
    attr_accessor :address_line

    # Value date/time
    attr_accessor :value_date_time

    # Booking date/time
    attr_accessor :booking_date_time

    # Optional additional raw data (custom object).
    attr_accessor :custom_data

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
        :'external_transaction_id' => :'external_transaction_id',
        :'name' => :'name',
        :'type' => :'type',
        :'amount' => :'amount',
        :'balance' => :'balance',
        :'currency' => :'currency',
        :'status' => :'status',
        :'bank_slug' => :'bank_slug',
        :'account_number' => :'account_number',
        :'category' => :'category',
        :'category_type' => :'category_type',
        :'address_line' => :'address_line',
        :'value_date_time' => :'value_date_time',
        :'booking_date_time' => :'booking_date_time',
        :'custom_data' => :'custom_data'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'external_transaction_id' => :'String',
        :'name' => :'String',
        :'type' => :'String',
        :'amount' => :'Float',
        :'balance' => :'BaseBalance2',
        :'currency' => :'String',
        :'status' => :'String',
        :'bank_slug' => :'String',
        :'account_number' => :'String',
        :'category' => :'String',
        :'category_type' => :'String',
        :'address_line' => :'String',
        :'value_date_time' => :'DateTime',
        :'booking_date_time' => :'DateTime',
        :'custom_data' => :'Object'
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

      if attributes.has_key?(:'external_transaction_id')
        self.external_transaction_id = attributes[:'external_transaction_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'bank_slug')
        self.bank_slug = attributes[:'bank_slug']
      end

      if attributes.has_key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'category_type')
        self.category_type = attributes[:'category_type']
      end

      if attributes.has_key?(:'address_line')
        self.address_line = attributes[:'address_line']
      end

      if attributes.has_key?(:'value_date_time')
        self.value_date_time = attributes[:'value_date_time']
      end

      if attributes.has_key?(:'booking_date_time')
        self.booking_date_time = attributes[:'booking_date_time']
      end

      if attributes.has_key?(:'custom_data')
        self.custom_data = attributes[:'custom_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @external_transaction_id.nil?
        invalid_properties.push('invalid value for "external_transaction_id", external_transaction_id cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @bank_slug.nil?
        invalid_properties.push('invalid value for "bank_slug", bank_slug cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @booking_date_time.nil?
        invalid_properties.push('invalid value for "booking_date_time", booking_date_time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @external_transaction_id.nil?
      return false if @amount.nil?
      return false if @currency.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['Booked', 'Pending'])
      return false unless status_validator.valid?(@status)
      return false if @bank_slug.nil?
      return false if @account_number.nil?
      return false if @booking_date_time.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['Booked', 'Pending'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          external_transaction_id == o.external_transaction_id &&
          name == o.name &&
          type == o.type &&
          amount == o.amount &&
          balance == o.balance &&
          currency == o.currency &&
          status == o.status &&
          bank_slug == o.bank_slug &&
          account_number == o.account_number &&
          category == o.category &&
          category_type == o.category_type &&
          address_line == o.address_line &&
          value_date_time == o.value_date_time &&
          booking_date_time == o.booking_date_time &&
          custom_data == o.custom_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, external_transaction_id, name, type, amount, balance, currency, status, bank_slug, account_number, category, category_type, address_line, value_date_time, booking_date_time, custom_data].hash
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
