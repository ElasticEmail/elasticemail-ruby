=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module ElasticEmail
  # Domain data, with information about domain records.
  class DomainDetail
    # Name of selected domain.
    attr_accessor :domain

    # True, if domain is used as default. Otherwise, false,
    attr_accessor :default_domain

    # True, if SPF record is verified
    attr_accessor :spf

    # True, if DKIM record is verified
    attr_accessor :dkim

    # True, if MX record is verified
    attr_accessor :mx

    attr_accessor :dmarc

    # True, if tracking CNAME record is verified
    attr_accessor :is_rewrite_domain_valid

    # True, if DKIM, SPF, or tracking are still to be verified
    attr_accessor :verify

    attr_accessor :type

    attr_accessor :tracking_status

    attr_accessor :certificate_status

    attr_accessor :certificate_validation_error

    attr_accessor :tracking_type_user_request

    attr_accessor :verp

    attr_accessor :custom_bounces_domain

    attr_accessor :is_custom_bounces_domain_default

    attr_accessor :is_marked_for_deletion

    attr_accessor :ownership

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
        :'domain' => :'Domain',
        :'default_domain' => :'DefaultDomain',
        :'spf' => :'Spf',
        :'dkim' => :'Dkim',
        :'mx' => :'MX',
        :'dmarc' => :'DMARC',
        :'is_rewrite_domain_valid' => :'IsRewriteDomainValid',
        :'verify' => :'Verify',
        :'type' => :'Type',
        :'tracking_status' => :'TrackingStatus',
        :'certificate_status' => :'CertificateStatus',
        :'certificate_validation_error' => :'CertificateValidationError',
        :'tracking_type_user_request' => :'TrackingTypeUserRequest',
        :'verp' => :'VERP',
        :'custom_bounces_domain' => :'CustomBouncesDomain',
        :'is_custom_bounces_domain_default' => :'IsCustomBouncesDomainDefault',
        :'is_marked_for_deletion' => :'IsMarkedForDeletion',
        :'ownership' => :'Ownership'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'domain' => :'String',
        :'default_domain' => :'Boolean',
        :'spf' => :'Boolean',
        :'dkim' => :'Boolean',
        :'mx' => :'Boolean',
        :'dmarc' => :'Boolean',
        :'is_rewrite_domain_valid' => :'Boolean',
        :'verify' => :'Boolean',
        :'type' => :'TrackingType',
        :'tracking_status' => :'TrackingValidationStatus',
        :'certificate_status' => :'CertificateValidationStatus',
        :'certificate_validation_error' => :'String',
        :'tracking_type_user_request' => :'TrackingType',
        :'verp' => :'Boolean',
        :'custom_bounces_domain' => :'String',
        :'is_custom_bounces_domain_default' => :'Boolean',
        :'is_marked_for_deletion' => :'Boolean',
        :'ownership' => :'DomainOwner'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ElasticEmail::DomainDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ElasticEmail::DomainDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'default_domain')
        self.default_domain = attributes[:'default_domain']
      end

      if attributes.key?(:'spf')
        self.spf = attributes[:'spf']
      end

      if attributes.key?(:'dkim')
        self.dkim = attributes[:'dkim']
      end

      if attributes.key?(:'mx')
        self.mx = attributes[:'mx']
      end

      if attributes.key?(:'dmarc')
        self.dmarc = attributes[:'dmarc']
      end

      if attributes.key?(:'is_rewrite_domain_valid')
        self.is_rewrite_domain_valid = attributes[:'is_rewrite_domain_valid']
      end

      if attributes.key?(:'verify')
        self.verify = attributes[:'verify']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'None'
      end

      if attributes.key?(:'tracking_status')
        self.tracking_status = attributes[:'tracking_status']
      else
        self.tracking_status = 'Validated'
      end

      if attributes.key?(:'certificate_status')
        self.certificate_status = attributes[:'certificate_status']
      else
        self.certificate_status = 'ErrorOccured'
      end

      if attributes.key?(:'certificate_validation_error')
        self.certificate_validation_error = attributes[:'certificate_validation_error']
      end

      if attributes.key?(:'tracking_type_user_request')
        self.tracking_type_user_request = attributes[:'tracking_type_user_request']
      else
        self.tracking_type_user_request = 'None'
      end

      if attributes.key?(:'verp')
        self.verp = attributes[:'verp']
      end

      if attributes.key?(:'custom_bounces_domain')
        self.custom_bounces_domain = attributes[:'custom_bounces_domain']
      end

      if attributes.key?(:'is_custom_bounces_domain_default')
        self.is_custom_bounces_domain_default = attributes[:'is_custom_bounces_domain_default']
      end

      if attributes.key?(:'is_marked_for_deletion')
        self.is_marked_for_deletion = attributes[:'is_marked_for_deletion']
      end

      if attributes.key?(:'ownership')
        self.ownership = attributes[:'ownership']
      else
        self.ownership = 'Current'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domain == o.domain &&
          default_domain == o.default_domain &&
          spf == o.spf &&
          dkim == o.dkim &&
          mx == o.mx &&
          dmarc == o.dmarc &&
          is_rewrite_domain_valid == o.is_rewrite_domain_valid &&
          verify == o.verify &&
          type == o.type &&
          tracking_status == o.tracking_status &&
          certificate_status == o.certificate_status &&
          certificate_validation_error == o.certificate_validation_error &&
          tracking_type_user_request == o.tracking_type_user_request &&
          verp == o.verp &&
          custom_bounces_domain == o.custom_bounces_domain &&
          is_custom_bounces_domain_default == o.is_custom_bounces_domain_default &&
          is_marked_for_deletion == o.is_marked_for_deletion &&
          ownership == o.ownership
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [domain, default_domain, spf, dkim, mx, dmarc, is_rewrite_domain_valid, verify, type, tracking_status, certificate_status, certificate_validation_error, tracking_type_user_request, verp, custom_bounces_domain, is_custom_bounces_domain_default, is_marked_for_deletion, ownership].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = ElasticEmail.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
