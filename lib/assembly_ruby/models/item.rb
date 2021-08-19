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
  class Item
    attr_accessor :id

    attr_accessor :name

    attr_accessor :description

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :state

    attr_accessor :status

    attr_accessor :amount

    attr_accessor :payment_type_id

    attr_accessor :currency

    attr_accessor :buyer_name

    attr_accessor :buyer_email

    attr_accessor :buyer_country

    attr_accessor :seller_name

    attr_accessor :seller_email

    attr_accessor :seller_country

    attr_accessor :tds_check_state

    attr_accessor :batch_state

    attr_accessor :invoice_url

    attr_accessor :payout_descriptor

    attr_accessor :remaining_amount

    attr_accessor :requested_release_amount

    attr_accessor :custom_descriptor

    attr_accessor :net_amount

    attr_accessor :chargedback_amount

    attr_accessor :refunded_amount

    attr_accessor :released_amount

    attr_accessor :buyer_fees

    attr_accessor :seller_fees

    attr_accessor :credit_card_fee

    attr_accessor :paypal_fee

    attr_accessor :seller_url

    attr_accessor :buyer_url

    attr_accessor :direct_debit_fee

    attr_accessor :due_date

    attr_accessor :pending_release_amount

    attr_accessor :dynamic_descriptor

    attr_accessor :deposit_reference

    attr_accessor :promisepay_fee

    attr_accessor :total_outstanding

    attr_accessor :total_amount

    attr_accessor :payment_method

    attr_accessor :payment_credit_card_enabled

    attr_accessor :payment_direct_debit_enabled

    attr_accessor :related

    attr_accessor :links

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
        :'name' => :'name',
        :'description' => :'description',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'state' => :'state',
        :'status' => :'status',
        :'amount' => :'amount',
        :'payment_type_id' => :'payment_type_id',
        :'currency' => :'currency',
        :'buyer_name' => :'buyer_name',
        :'buyer_email' => :'buyer_email',
        :'buyer_country' => :'buyer_country',
        :'seller_name' => :'seller_name',
        :'seller_email' => :'seller_email',
        :'seller_country' => :'seller_country',
        :'tds_check_state' => :'tds_check_state',
        :'batch_state' => :'batch_state',
        :'invoice_url' => :'invoice_url',
        :'payout_descriptor' => :'payout_descriptor',
        :'remaining_amount' => :'remaining_amount',
        :'requested_release_amount' => :'requested_release_amount',
        :'custom_descriptor' => :'custom_descriptor',
        :'net_amount' => :'net_amount',
        :'chargedback_amount' => :'chargedback_amount',
        :'refunded_amount' => :'refunded_amount',
        :'released_amount' => :'released_amount',
        :'buyer_fees' => :'buyer_fees',
        :'seller_fees' => :'seller_fees',
        :'credit_card_fee' => :'credit_card_fee',
        :'paypal_fee' => :'paypal_fee',
        :'seller_url' => :'seller_url',
        :'buyer_url' => :'buyer_url',
        :'direct_debit_fee' => :'direct_debit_fee',
        :'due_date' => :'due_date',
        :'pending_release_amount' => :'pending_release_amount',
        :'dynamic_descriptor' => :'dynamic_descriptor',
        :'deposit_reference' => :'deposit_reference',
        :'promisepay_fee' => :'promisepay_fee',
        :'total_outstanding' => :'total_outstanding',
        :'total_amount' => :'total_amount',
        :'payment_method' => :'payment_method',
        :'payment_credit_card_enabled' => :'payment_credit_card_enabled',
        :'payment_direct_debit_enabled' => :'payment_direct_debit_enabled',
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
        :'description' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'state' => :'String',
        :'status' => :'Integer',
        :'amount' => :'Integer',
        :'payment_type_id' => :'Integer',
        :'currency' => :'String',
        :'buyer_name' => :'String',
        :'buyer_email' => :'String',
        :'buyer_country' => :'String',
        :'seller_name' => :'String',
        :'seller_email' => :'String',
        :'seller_country' => :'String',
        :'tds_check_state' => :'String',
        :'batch_state' => :'String',
        :'invoice_url' => :'String',
        :'payout_descriptor' => :'String',
        :'remaining_amount' => :'Integer',
        :'requested_release_amount' => :'Integer',
        :'custom_descriptor' => :'String',
        :'net_amount' => :'Integer',
        :'chargedback_amount' => :'Integer',
        :'refunded_amount' => :'Integer',
        :'released_amount' => :'Integer',
        :'buyer_fees' => :'Integer',
        :'seller_fees' => :'Integer',
        :'credit_card_fee' => :'Integer',
        :'paypal_fee' => :'Integer',
        :'seller_url' => :'String',
        :'buyer_url' => :'String',
        :'direct_debit_fee' => :'Integer',
        :'due_date' => :'Date',
        :'pending_release_amount' => :'Integer',
        :'dynamic_descriptor' => :'String',
        :'deposit_reference' => :'String',
        :'promisepay_fee' => :'Integer',
        :'total_outstanding' => :'Integer',
        :'total_amount' => :'Integer',
        :'payment_method' => :'String',
        :'payment_credit_card_enabled' => :'Boolean',
        :'payment_direct_debit_enabled' => :'Boolean',
        :'related' => :'ItemRelated',
        :'links' => :'ItemLinks'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'due_date',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AssemblyRuby::Item` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AssemblyRuby::Item`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
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

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'payment_type_id')
        self.payment_type_id = attributes[:'payment_type_id']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'buyer_name')
        self.buyer_name = attributes[:'buyer_name']
      end

      if attributes.key?(:'buyer_email')
        self.buyer_email = attributes[:'buyer_email']
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

      if attributes.key?(:'seller_country')
        self.seller_country = attributes[:'seller_country']
      end

      if attributes.key?(:'tds_check_state')
        self.tds_check_state = attributes[:'tds_check_state']
      end

      if attributes.key?(:'batch_state')
        self.batch_state = attributes[:'batch_state']
      end

      if attributes.key?(:'invoice_url')
        self.invoice_url = attributes[:'invoice_url']
      end

      if attributes.key?(:'payout_descriptor')
        self.payout_descriptor = attributes[:'payout_descriptor']
      end

      if attributes.key?(:'remaining_amount')
        self.remaining_amount = attributes[:'remaining_amount']
      end

      if attributes.key?(:'requested_release_amount')
        self.requested_release_amount = attributes[:'requested_release_amount']
      end

      if attributes.key?(:'custom_descriptor')
        self.custom_descriptor = attributes[:'custom_descriptor']
      end

      if attributes.key?(:'net_amount')
        self.net_amount = attributes[:'net_amount']
      end

      if attributes.key?(:'chargedback_amount')
        self.chargedback_amount = attributes[:'chargedback_amount']
      end

      if attributes.key?(:'refunded_amount')
        self.refunded_amount = attributes[:'refunded_amount']
      end

      if attributes.key?(:'released_amount')
        self.released_amount = attributes[:'released_amount']
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

      if attributes.key?(:'paypal_fee')
        self.paypal_fee = attributes[:'paypal_fee']
      end

      if attributes.key?(:'seller_url')
        self.seller_url = attributes[:'seller_url']
      end

      if attributes.key?(:'buyer_url')
        self.buyer_url = attributes[:'buyer_url']
      end

      if attributes.key?(:'direct_debit_fee')
        self.direct_debit_fee = attributes[:'direct_debit_fee']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'pending_release_amount')
        self.pending_release_amount = attributes[:'pending_release_amount']
      end

      if attributes.key?(:'dynamic_descriptor')
        self.dynamic_descriptor = attributes[:'dynamic_descriptor']
      end

      if attributes.key?(:'deposit_reference')
        self.deposit_reference = attributes[:'deposit_reference']
      end

      if attributes.key?(:'promisepay_fee')
        self.promisepay_fee = attributes[:'promisepay_fee']
      end

      if attributes.key?(:'total_outstanding')
        self.total_outstanding = attributes[:'total_outstanding']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'payment_credit_card_enabled')
        self.payment_credit_card_enabled = attributes[:'payment_credit_card_enabled']
      end

      if attributes.key?(:'payment_direct_debit_enabled')
        self.payment_direct_debit_enabled = attributes[:'payment_direct_debit_enabled']
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
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      state_validator = EnumAttributeValidator.new('String', ["pending", "payment_required", "wire_pending", "payment_pending", "payment_held", "payment_authorized", "voided", "fraud_hold", "payment_deposited", "work_completed", "problem_flagged", "problem_resolve_requested", "problem_escalated", "completed", "cancelled", "refunded", "refund_pending", "refund_flagged", "off_platform_refunded", "partial_completed", "partial_paid", "off_platform_chargedback"])
      return false unless state_validator.valid?(@state)
      status_validator = EnumAttributeValidator.new('Integer', [22000, 22100, 22110, 22150, 22175, 22180, 22195, 22190, 22200, 22300, 22400, 22410, 22420, 22500, 22575, 22600, 22610, 22650, 22670, 22700, 22800, 22680])
      return false unless status_validator.valid?(@status)
      return false if @amount.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["pending", "payment_required", "wire_pending", "payment_pending", "payment_held", "payment_authorized", "voided", "fraud_hold", "payment_deposited", "work_completed", "problem_flagged", "problem_resolve_requested", "problem_escalated", "completed", "cancelled", "refunded", "refund_pending", "refund_flagged", "off_platform_refunded", "partial_completed", "partial_paid", "off_platform_chargedback"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Integer', [22000, 22100, 22110, 22150, 22175, 22180, 22195, 22190, 22200, 22300, 22400, 22410, 22420, 22500, 22575, 22600, 22610, 22650, 22670, 22700, 22800, 22680])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          state == o.state &&
          status == o.status &&
          amount == o.amount &&
          payment_type_id == o.payment_type_id &&
          currency == o.currency &&
          buyer_name == o.buyer_name &&
          buyer_email == o.buyer_email &&
          buyer_country == o.buyer_country &&
          seller_name == o.seller_name &&
          seller_email == o.seller_email &&
          seller_country == o.seller_country &&
          tds_check_state == o.tds_check_state &&
          batch_state == o.batch_state &&
          invoice_url == o.invoice_url &&
          payout_descriptor == o.payout_descriptor &&
          remaining_amount == o.remaining_amount &&
          requested_release_amount == o.requested_release_amount &&
          custom_descriptor == o.custom_descriptor &&
          net_amount == o.net_amount &&
          chargedback_amount == o.chargedback_amount &&
          refunded_amount == o.refunded_amount &&
          released_amount == o.released_amount &&
          buyer_fees == o.buyer_fees &&
          seller_fees == o.seller_fees &&
          credit_card_fee == o.credit_card_fee &&
          paypal_fee == o.paypal_fee &&
          seller_url == o.seller_url &&
          buyer_url == o.buyer_url &&
          direct_debit_fee == o.direct_debit_fee &&
          due_date == o.due_date &&
          pending_release_amount == o.pending_release_amount &&
          dynamic_descriptor == o.dynamic_descriptor &&
          deposit_reference == o.deposit_reference &&
          promisepay_fee == o.promisepay_fee &&
          total_outstanding == o.total_outstanding &&
          total_amount == o.total_amount &&
          payment_method == o.payment_method &&
          payment_credit_card_enabled == o.payment_credit_card_enabled &&
          payment_direct_debit_enabled == o.payment_direct_debit_enabled &&
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
      [id, name, description, created_at, updated_at, state, status, amount, payment_type_id, currency, buyer_name, buyer_email, buyer_country, seller_name, seller_email, seller_country, tds_check_state, batch_state, invoice_url, payout_descriptor, remaining_amount, requested_release_amount, custom_descriptor, net_amount, chargedback_amount, refunded_amount, released_amount, buyer_fees, seller_fees, credit_card_fee, paypal_fee, seller_url, buyer_url, direct_debit_fee, due_date, pending_release_amount, dynamic_descriptor, deposit_reference, promisepay_fee, total_outstanding, total_amount, payment_method, payment_credit_card_enabled, payment_direct_debit_enabled, related, links].hash
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
