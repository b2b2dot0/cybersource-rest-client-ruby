=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class V2paymentsidcapturesProcessingInformationAuthorizationOptions
    # Authorization type. Possible values:   - **AUTOCAPTURE**: automatic capture.  - **STANDARDCAPTURE**: standard capture.  - **VERBAL**: forced capture. Include it in the payment request for a forced capture. Include it in the capture  request for a verbal payment.  For processor-specific information, see the auth_type field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :auth_type

    # Authorization code.  **Forced Capture**  Use this field to send the authorization code you received from a payment that you authorized outside the CyberSource system.  **Verbal Authorization**  Use this field in CAPTURE API to send the verbally received authorization code.  For processor-specific information, see the auth_code field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :verbal_auth_code

    # Transaction ID (TID).
    attr_accessor :verbal_auth_transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_type' => :'authType',
        :'verbal_auth_code' => :'verbalAuthCode',
        :'verbal_auth_transaction_id' => :'verbalAuthTransactionId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auth_type' => :'String',
        :'verbal_auth_code' => :'String',
        :'verbal_auth_transaction_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authType')
        self.auth_type = attributes[:'authType']
      end

      if attributes.has_key?(:'verbalAuthCode')
        self.verbal_auth_code = attributes[:'verbalAuthCode']
      end

      if attributes.has_key?(:'verbalAuthTransactionId')
        self.verbal_auth_transaction_id = attributes[:'verbalAuthTransactionId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@auth_type.nil? && @auth_type.to_s.length > 15
        invalid_properties.push('invalid value for "auth_type", the character length must be smaller than or equal to 15.')
      end

      if !@verbal_auth_code.nil? && @verbal_auth_code.to_s.length > 7
        invalid_properties.push('invalid value for "verbal_auth_code", the character length must be smaller than or equal to 7.')
      end

      if !@verbal_auth_transaction_id.nil? && @verbal_auth_transaction_id.to_s.length > 15
        invalid_properties.push('invalid value for "verbal_auth_transaction_id", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@auth_type.nil? && @auth_type.to_s.length > 15
      return false if !@verbal_auth_code.nil? && @verbal_auth_code.to_s.length > 7
      return false if !@verbal_auth_transaction_id.nil? && @verbal_auth_transaction_id.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] auth_type Value to be assigned
    def auth_type=(auth_type)
      if !auth_type.nil? && auth_type.to_s.length > 15
        fail ArgumentError, 'invalid value for "auth_type", the character length must be smaller than or equal to 15.'
      end

      @auth_type = auth_type
    end

    # Custom attribute writer method with validation
    # @param [Object] verbal_auth_code Value to be assigned
    def verbal_auth_code=(verbal_auth_code)
      if !verbal_auth_code.nil? && verbal_auth_code.to_s.length > 7
        fail ArgumentError, 'invalid value for "verbal_auth_code", the character length must be smaller than or equal to 7.'
      end

      @verbal_auth_code = verbal_auth_code
    end

    # Custom attribute writer method with validation
    # @param [Object] verbal_auth_transaction_id Value to be assigned
    def verbal_auth_transaction_id=(verbal_auth_transaction_id)
      if !verbal_auth_transaction_id.nil? && verbal_auth_transaction_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "verbal_auth_transaction_id", the character length must be smaller than or equal to 15.'
      end

      @verbal_auth_transaction_id = verbal_auth_transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_type == o.auth_type &&
          verbal_auth_code == o.verbal_auth_code &&
          verbal_auth_transaction_id == o.verbal_auth_transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_type, verbal_auth_code, verbal_auth_transaction_id].hash
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
