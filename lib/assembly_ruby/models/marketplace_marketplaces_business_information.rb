=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'date'
require 'time'

module AssemblyRuby
  class MarketplaceMarketplacesBusinessInformation
    attr_accessor :principal_name

    attr_accessor :principal_government_number

    attr_accessor :incorporation_date

    attr_accessor :bank_account_holder

    attr_accessor :bank_account_number

    attr_accessor :bank_routing_number

    attr_accessor :avg_transaction_value

    attr_accessor :monthly_transactions

    attr_accessor :monthly_disputes

    attr_accessor :monthly_refunds

    attr_accessor :monthly_chargebacks

    attr_accessor :unique_users

    attr_accessor :company_phone

    attr_accessor :company_country

    attr_accessor :transaction_time

    attr_accessor :payments_flow

    attr_accessor :business_model_description

    attr_accessor :customer_support_email

    attr_accessor :bank_name

    attr_accessor :bank_account_type

    attr_accessor :bank_holder_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'principal_name' => :'principal_name',
        :'principal_government_number' => :'principal_government_number',
        :'incorporation_date' => :'incorporation_date',
        :'bank_account_holder' => :'bank_account_holder',
        :'bank_account_number' => :'bank_account_number',
        :'bank_routing_number' => :'bank_routing_number',
        :'avg_transaction_value' => :'avg_transaction_value',
        :'monthly_transactions' => :'monthly_transactions',
        :'monthly_disputes' => :'monthly_disputes',
        :'monthly_refunds' => :'monthly_refunds',
        :'monthly_chargebacks' => :'monthly_chargebacks',
        :'unique_users' => :'unique_users',
        :'company_phone' => :'company_phone',
        :'company_country' => :'company_country',
        :'transaction_time' => :'transaction_time',
        :'payments_flow' => :'payments_flow',
        :'business_model_description' => :'business_model_description',
        :'customer_support_email' => :'customer_support_email',
        :'bank_name' => :'bank_name',
        :'bank_account_type' => :'bank_account_type',
        :'bank_holder_type' => :'bank_holder_type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'principal_name' => :'String',
        :'principal_government_number' => :'String',
        :'incorporation_date' => :'String',
        :'bank_account_holder' => :'String',
        :'bank_account_number' => :'String',
        :'bank_routing_number' => :'String',
        :'avg_transaction_value' => :'String',
        :'monthly_transactions' => :'String',
        :'monthly_disputes' => :'String',
        :'monthly_refunds' => :'String',
        :'monthly_chargebacks' => :'String',
        :'unique_users' => :'String',
        :'company_phone' => :'String',
        :'company_country' => :'String',
        :'transaction_time' => :'String',
        :'payments_flow' => :'String',
        :'business_model_description' => :'String',
        :'customer_support_email' => :'String',
        :'bank_name' => :'String',
        :'bank_account_type' => :'String',
        :'bank_holder_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AssemblyRuby::MarketplaceMarketplacesBusinessInformation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AssemblyRuby::MarketplaceMarketplacesBusinessInformation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'principal_name')
        self.principal_name = attributes[:'principal_name']
      end

      if attributes.key?(:'principal_government_number')
        self.principal_government_number = attributes[:'principal_government_number']
      end

      if attributes.key?(:'incorporation_date')
        self.incorporation_date = attributes[:'incorporation_date']
      end

      if attributes.key?(:'bank_account_holder')
        self.bank_account_holder = attributes[:'bank_account_holder']
      end

      if attributes.key?(:'bank_account_number')
        self.bank_account_number = attributes[:'bank_account_number']
      end

      if attributes.key?(:'bank_routing_number')
        self.bank_routing_number = attributes[:'bank_routing_number']
      end

      if attributes.key?(:'avg_transaction_value')
        self.avg_transaction_value = attributes[:'avg_transaction_value']
      end

      if attributes.key?(:'monthly_transactions')
        self.monthly_transactions = attributes[:'monthly_transactions']
      end

      if attributes.key?(:'monthly_disputes')
        self.monthly_disputes = attributes[:'monthly_disputes']
      end

      if attributes.key?(:'monthly_refunds')
        self.monthly_refunds = attributes[:'monthly_refunds']
      end

      if attributes.key?(:'monthly_chargebacks')
        self.monthly_chargebacks = attributes[:'monthly_chargebacks']
      end

      if attributes.key?(:'unique_users')
        self.unique_users = attributes[:'unique_users']
      end

      if attributes.key?(:'company_phone')
        self.company_phone = attributes[:'company_phone']
      end

      if attributes.key?(:'company_country')
        self.company_country = attributes[:'company_country']
      end

      if attributes.key?(:'transaction_time')
        self.transaction_time = attributes[:'transaction_time']
      end

      if attributes.key?(:'payments_flow')
        self.payments_flow = attributes[:'payments_flow']
      end

      if attributes.key?(:'business_model_description')
        self.business_model_description = attributes[:'business_model_description']
      end

      if attributes.key?(:'customer_support_email')
        self.customer_support_email = attributes[:'customer_support_email']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'bank_account_type')
        self.bank_account_type = attributes[:'bank_account_type']
      end

      if attributes.key?(:'bank_holder_type')
        self.bank_holder_type = attributes[:'bank_holder_type']
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
          principal_name == o.principal_name &&
          principal_government_number == o.principal_government_number &&
          incorporation_date == o.incorporation_date &&
          bank_account_holder == o.bank_account_holder &&
          bank_account_number == o.bank_account_number &&
          bank_routing_number == o.bank_routing_number &&
          avg_transaction_value == o.avg_transaction_value &&
          monthly_transactions == o.monthly_transactions &&
          monthly_disputes == o.monthly_disputes &&
          monthly_refunds == o.monthly_refunds &&
          monthly_chargebacks == o.monthly_chargebacks &&
          unique_users == o.unique_users &&
          company_phone == o.company_phone &&
          company_country == o.company_country &&
          transaction_time == o.transaction_time &&
          payments_flow == o.payments_flow &&
          business_model_description == o.business_model_description &&
          customer_support_email == o.customer_support_email &&
          bank_name == o.bank_name &&
          bank_account_type == o.bank_account_type &&
          bank_holder_type == o.bank_holder_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [principal_name, principal_government_number, incorporation_date, bank_account_holder, bank_account_number, bank_routing_number, avg_transaction_value, monthly_transactions, monthly_disputes, monthly_refunds, monthly_chargebacks, unique_users, company_phone, company_country, transaction_time, payments_flow, business_model_description, customer_support_email, bank_name, bank_account_type, bank_holder_type].hash
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
