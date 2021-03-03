=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module AssemblyRuby
  class Charge
    attr_accessor :id

    attr_accessor :name

    attr_accessor :custom_descriptor

    attr_accessor :custom_data

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :state

    attr_accessor :buyer_fees

    attr_accessor :seller_fees

    attr_accessor :credit_card_fee

    attr_accessor :status

    attr_accessor :amount

    attr_accessor :dynamic_descriptor

    attr_accessor :account_id

    attr_accessor :account_type

    attr_accessor :promisepay_fee

    attr_accessor :currency

    attr_accessor :payment_method

    attr_accessor :buyer_name

    attr_accessor :buyer_email

    attr_accessor :buyer_zip

    attr_accessor :buyer_country

    attr_accessor :seller_name

    attr_accessor :seller_email

    attr_accessor :seller_zip

    attr_accessor :seller_country

    attr_accessor :related

    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'custom_descriptor' => :'custom_descriptor',
        :'custom_data' => :'custom_data',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'state' => :'state',
        :'buyer_fees' => :'buyer_fees',
        :'seller_fees' => :'seller_fees',
        :'credit_card_fee' => :'credit_card_fee',
        :'status' => :'status',
        :'amount' => :'amount',
        :'dynamic_descriptor' => :'dynamic_descriptor',
        :'account_id' => :'account_id',
        :'account_type' => :'account_type',
        :'promisepay_fee' => :'promisepay_fee',
        :'currency' => :'currency',
        :'payment_method' => :'payment_method',
        :'buyer_name' => :'buyer_name',
        :'buyer_email' => :'buyer_email',
        :'buyer_zip' => :'buyer_zip',
        :'buyer_country' => :'buyer_country',
        :'seller_name' => :'seller_name',
        :'seller_email' => :'seller_email',
        :'seller_zip' => :'seller_zip',
        :'seller_country' => :'seller_country',
        :'related' => :'related',
        :'links' => :'links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'custom_descriptor' => :'String',
        :'custom_data' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'state' => :'String',
        :'buyer_fees' => :'Integer',
        :'seller_fees' => :'Integer',
        :'credit_card_fee' => :'Integer',
        :'status' => :'Integer',
        :'amount' => :'Integer',
        :'dynamic_descriptor' => :'String',
        :'account_id' => :'String',
        :'account_type' => :'String',
        :'promisepay_fee' => :'Integer',
        :'currency' => :'String',
        :'payment_method' => :'String',
        :'buyer_name' => :'String',
        :'buyer_email' => :'String',
        :'buyer_zip' => :'String',
        :'buyer_country' => :'String',
        :'seller_name' => :'String',
        :'seller_email' => :'String',
        :'seller_zip' => :'String',
        :'seller_country' => :'String',
        :'related' => :'ItemRelated',
        :'links' => :'ChargeLinks'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AssemblyRuby::Charge` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AssemblyRuby::Charge`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'custom_descriptor')
        self.custom_descriptor = attributes[:'custom_descriptor']
      end

      if attributes.key?(:'custom_data')
        self.custom_data = attributes[:'custom_data']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'buyer_fees')
        self.buyer_fees = attributes[:'buyer_fees']
      end

      if attributes.key?(:'seller_fees')
        self.seller_fees = attributes[:'seller_fees']
      end

      if attributes.key?(:'credit_card_fee')
        self.credit_card_fee = attributes[:'credit_card_fee']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'dynamic_descriptor')
        self.dynamic_descriptor = attributes[:'dynamic_descriptor']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'promisepay_fee')
        self.promisepay_fee = attributes[:'promisepay_fee']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'buyer_name')
        self.buyer_name = attributes[:'buyer_name']
      end

      if attributes.key?(:'buyer_email')
        self.buyer_email = attributes[:'buyer_email']
      end

      if attributes.key?(:'buyer_zip')
        self.buyer_zip = attributes[:'buyer_zip']
      end

      if attributes.key?(:'buyer_country')
        self.buyer_country = attributes[:'buyer_country']
      end

      if attributes.key?(:'seller_name')
        self.seller_name = attributes[:'seller_name']
      end

      if attributes.key?(:'seller_email')
        self.seller_email = attributes[:'seller_email']
      end

      if attributes.key?(:'seller_zip')
        self.seller_zip = attributes[:'seller_zip']
      end

      if attributes.key?(:'seller_country')
        self.seller_country = attributes[:'seller_country']
      end

      if attributes.key?(:'related')
        self.related = attributes[:'related']
      end

      if attributes.key?(:'links')
        self.links = attributes[:'links']
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
          id == o.id &&
          name == o.name &&
          custom_descriptor == o.custom_descriptor &&
          custom_data == o.custom_data &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          state == o.state &&
          buyer_fees == o.buyer_fees &&
          seller_fees == o.seller_fees &&
          credit_card_fee == o.credit_card_fee &&
          status == o.status &&
          amount == o.amount &&
          dynamic_descriptor == o.dynamic_descriptor &&
          account_id == o.account_id &&
          account_type == o.account_type &&
          promisepay_fee == o.promisepay_fee &&
          currency == o.currency &&
          payment_method == o.payment_method &&
          buyer_name == o.buyer_name &&
          buyer_email == o.buyer_email &&
          buyer_zip == o.buyer_zip &&
          buyer_country == o.buyer_country &&
          seller_name == o.seller_name &&
          seller_email == o.seller_email &&
          seller_zip == o.seller_zip &&
          seller_country == o.seller_country &&
          related == o.related &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, custom_descriptor, custom_data, created_at, updated_at, state, buyer_fees, seller_fees, credit_card_fee, status, amount, dynamic_descriptor, account_id, account_type, promisepay_fee, currency, payment_method, buyer_name, buyer_email, buyer_zip, buyer_country, seller_name, seller_email, seller_zip, seller_country, related, links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = AssemblyRuby.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
