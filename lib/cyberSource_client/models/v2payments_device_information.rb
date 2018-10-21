=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class V2paymentsDeviceInformation
    # DNS resolved hostname from above _ipAddress_.
    attr_accessor :host_name

    # IP address of the customer.
    attr_accessor :ip_address

    # Customerâ€™s browser as identified from the HTTP header data. For example, Mozilla is the value that identifies the Netscape browser. 
    attr_accessor :user_agent

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'host_name' => :'hostName',
        :'ip_address' => :'ipAddress',
        :'user_agent' => :'userAgent'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'host_name' => :'String',
        :'ip_address' => :'String',
        :'user_agent' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'hostName')
        self.host_name = attributes[:'hostName']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'userAgent')
        self.user_agent = attributes[:'userAgent']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@host_name.nil? && @host_name.to_s.length > 60
        invalid_properties.push('invalid value for "host_name", the character length must be smaller than or equal to 60.')
      end

      if !@ip_address.nil? && @ip_address.to_s.length > 15
        invalid_properties.push('invalid value for "ip_address", the character length must be smaller than or equal to 15.')
      end

      if !@user_agent.nil? && @user_agent.to_s.length > 40
        invalid_properties.push('invalid value for "user_agent", the character length must be smaller than or equal to 40.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@host_name.nil? && @host_name.to_s.length > 60
      return false if !@ip_address.nil? && @ip_address.to_s.length > 15
      return false if !@user_agent.nil? && @user_agent.to_s.length > 40
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] host_name Value to be assigned
    def host_name=(host_name)
      if !host_name.nil? && host_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "host_name", the character length must be smaller than or equal to 60.'
      end

      @host_name = host_name
    end

    # Custom attribute writer method with validation
    # @param [Object] ip_address Value to be assigned
    def ip_address=(ip_address)
      if !ip_address.nil? && ip_address.to_s.length > 15
        fail ArgumentError, 'invalid value for "ip_address", the character length must be smaller than or equal to 15.'
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method with validation
    # @param [Object] user_agent Value to be assigned
    def user_agent=(user_agent)
      if !user_agent.nil? && user_agent.to_s.length > 40
        fail ArgumentError, 'invalid value for "user_agent", the character length must be smaller than or equal to 40.'
      end

      @user_agent = user_agent
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host_name == o.host_name &&
          ip_address == o.ip_address &&
          user_agent == o.user_agent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [host_name, ip_address, user_agent].hash
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
