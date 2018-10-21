=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class InlineResponse2002OrderInformationAmountDetails
    # Amount that was authorized. 
    attr_accessor :authorized_amount

    # Grand total for the order. You can include a decimal point (.), but no other special characters. CyberSource truncates the amount to the correct number of decimal places.  * CTV, FDCCompass, Paymentech (<= 12)  For processor-specific information, see the grand_total_amount field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :total_amount

    # Currency used for the order. Use the three-character ISO Standard Currency Codes.  For an authorization reversal or a capture, you must use the same currency that you used in your request for Payment API. 
    attr_accessor :currency

    # Total discount amount applied to the order.  For processor-specific information, see the order_discount_amount field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :discount_amount

    # Total charges for any import or export duties included in the order.  For processor-specific information, see the duty_amount field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :duty_amount

    # Total tax amount for all the items in the order.  For processor-specific information, see the total_tax_amount field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :tax_amount

    # Flag that indicates whether a national tax is included in the order total.  Possible values:   - **0**: national tax not included  - **1**: national tax included  For processor-specific information, see the national_tax_indicator field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :national_tax_included

    # Total freight or shipping and handling charges for the order. When you include this field in your request, you must also include the **totalAmount** field.  For processor-specific information, see the freight_amount field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :freight_amount

    attr_accessor :tax_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authorized_amount' => :'authorizedAmount',
        :'total_amount' => :'totalAmount',
        :'currency' => :'currency',
        :'discount_amount' => :'discountAmount',
        :'duty_amount' => :'dutyAmount',
        :'tax_amount' => :'taxAmount',
        :'national_tax_included' => :'nationalTaxIncluded',
        :'freight_amount' => :'freightAmount',
        :'tax_details' => :'taxDetails'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'authorized_amount' => :'String',
        :'total_amount' => :'String',
        :'currency' => :'String',
        :'discount_amount' => :'String',
        :'duty_amount' => :'String',
        :'tax_amount' => :'String',
        :'national_tax_included' => :'String',
        :'freight_amount' => :'String',
        :'tax_details' => :'Array<V2paymentsOrderInformationAmountDetailsTaxDetails>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authorizedAmount')
        self.authorized_amount = attributes[:'authorizedAmount']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'dutyAmount')
        self.duty_amount = attributes[:'dutyAmount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'nationalTaxIncluded')
        self.national_tax_included = attributes[:'nationalTaxIncluded']
      end

      if attributes.has_key?(:'freightAmount')
        self.freight_amount = attributes[:'freightAmount']
      end

      if attributes.has_key?(:'taxDetails')
        if (value = attributes[:'taxDetails']).is_a?(Array)
          self.tax_details = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@authorized_amount.nil? && @authorized_amount.to_s.length > 15
        invalid_properties.push('invalid value for "authorized_amount", the character length must be smaller than or equal to 15.')
      end

      if !@total_amount.nil? && @total_amount.to_s.length > 19
        invalid_properties.push('invalid value for "total_amount", the character length must be smaller than or equal to 19.')
      end

      if !@currency.nil? && @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if !@discount_amount.nil? && @discount_amount.to_s.length > 15
        invalid_properties.push('invalid value for "discount_amount", the character length must be smaller than or equal to 15.')
      end

      if !@duty_amount.nil? && @duty_amount.to_s.length > 15
        invalid_properties.push('invalid value for "duty_amount", the character length must be smaller than or equal to 15.')
      end

      if !@tax_amount.nil? && @tax_amount.to_s.length > 12
        invalid_properties.push('invalid value for "tax_amount", the character length must be smaller than or equal to 12.')
      end

      if !@national_tax_included.nil? && @national_tax_included.to_s.length > 1
        invalid_properties.push('invalid value for "national_tax_included", the character length must be smaller than or equal to 1.')
      end

      if !@freight_amount.nil? && @freight_amount.to_s.length > 13
        invalid_properties.push('invalid value for "freight_amount", the character length must be smaller than or equal to 13.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@authorized_amount.nil? && @authorized_amount.to_s.length > 15
      return false if !@total_amount.nil? && @total_amount.to_s.length > 19
      return false if !@currency.nil? && @currency.to_s.length > 3
      return false if !@discount_amount.nil? && @discount_amount.to_s.length > 15
      return false if !@duty_amount.nil? && @duty_amount.to_s.length > 15
      return false if !@tax_amount.nil? && @tax_amount.to_s.length > 12
      return false if !@national_tax_included.nil? && @national_tax_included.to_s.length > 1
      return false if !@freight_amount.nil? && @freight_amount.to_s.length > 13
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] authorized_amount Value to be assigned
    def authorized_amount=(authorized_amount)
      if !authorized_amount.nil? && authorized_amount.to_s.length > 15
        fail ArgumentError, 'invalid value for "authorized_amount", the character length must be smaller than or equal to 15.'
      end

      @authorized_amount = authorized_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      if !total_amount.nil? && total_amount.to_s.length > 19
        fail ArgumentError, 'invalid value for "total_amount", the character length must be smaller than or equal to 19.'
      end

      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if !currency.nil? && currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_amount Value to be assigned
    def discount_amount=(discount_amount)
      if !discount_amount.nil? && discount_amount.to_s.length > 15
        fail ArgumentError, 'invalid value for "discount_amount", the character length must be smaller than or equal to 15.'
      end

      @discount_amount = discount_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] duty_amount Value to be assigned
    def duty_amount=(duty_amount)
      if !duty_amount.nil? && duty_amount.to_s.length > 15
        fail ArgumentError, 'invalid value for "duty_amount", the character length must be smaller than or equal to 15.'
      end

      @duty_amount = duty_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      if !tax_amount.nil? && tax_amount.to_s.length > 12
        fail ArgumentError, 'invalid value for "tax_amount", the character length must be smaller than or equal to 12.'
      end

      @tax_amount = tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] national_tax_included Value to be assigned
    def national_tax_included=(national_tax_included)
      if !national_tax_included.nil? && national_tax_included.to_s.length > 1
        fail ArgumentError, 'invalid value for "national_tax_included", the character length must be smaller than or equal to 1.'
      end

      @national_tax_included = national_tax_included
    end

    # Custom attribute writer method with validation
    # @param [Object] freight_amount Value to be assigned
    def freight_amount=(freight_amount)
      if !freight_amount.nil? && freight_amount.to_s.length > 13
        fail ArgumentError, 'invalid value for "freight_amount", the character length must be smaller than or equal to 13.'
      end

      @freight_amount = freight_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorized_amount == o.authorized_amount &&
          total_amount == o.total_amount &&
          currency == o.currency &&
          discount_amount == o.discount_amount &&
          duty_amount == o.duty_amount &&
          tax_amount == o.tax_amount &&
          national_tax_included == o.national_tax_included &&
          freight_amount == o.freight_amount &&
          tax_details == o.tax_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [authorized_amount, total_amount, currency, discount_amount, duty_amount, tax_amount, national_tax_included, freight_amount, tax_details].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
        temp_model = CyberSource.const_get(type).new
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
