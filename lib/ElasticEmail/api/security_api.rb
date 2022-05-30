=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module ElasticEmail
  class SecurityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete ApiKey
    # Delete your existing ApiKey. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKey should be deleted
    # @return [nil]
    def security_apikeys_by_name_delete(name, opts = {})
      security_apikeys_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete ApiKey
    # Delete your existing ApiKey. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKey should be deleted
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def security_apikeys_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_apikeys_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_apikeys_by_name_delete"
      end
      # resource path
      local_var_path = '/security/apikeys/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_apikeys_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_apikeys_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load ApiKey
    # Load your existing ApiKey info. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKey should be loaded
    # @return [ApiKey]
    def security_apikeys_by_name_get(name, opts = {})
      data, _status_code, _headers = security_apikeys_by_name_get_with_http_info(name, opts)
      data
    end

    # Load ApiKey
    # Load your existing ApiKey info. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKey should be loaded
    # @return [Array<(ApiKey, Integer, Hash)>] ApiKey data, response status code and response headers
    def security_apikeys_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_apikeys_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_apikeys_by_name_get"
      end
      # resource path
      local_var_path = '/security/apikeys/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_apikeys_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_apikeys_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ApiKey
    # Update your existing ApiKey. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param api_key_payload [ApiKeyPayload] 
    # @param [Hash] opts the optional parameters
    # @return [ApiKey]
    def security_apikeys_by_name_put(name, api_key_payload, opts = {})
      data, _status_code, _headers = security_apikeys_by_name_put_with_http_info(name, api_key_payload, opts)
      data
    end

    # Update ApiKey
    # Update your existing ApiKey. Required Access Level: Security
    # @param name [String] Name of the ApiKey
    # @param api_key_payload [ApiKeyPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKey, Integer, Hash)>] ApiKey data, response status code and response headers
    def security_apikeys_by_name_put_with_http_info(name, api_key_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_apikeys_by_name_put ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_apikeys_by_name_put"
      end
      # verify the required parameter 'api_key_payload' is set
      if @api_client.config.client_side_validation && api_key_payload.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_payload' when calling SecurityApi.security_apikeys_by_name_put"
      end
      # resource path
      local_var_path = '/security/apikeys/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_key_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_apikeys_by_name_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_apikeys_by_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ApiKeys
    # List all your existing ApiKeys. Required Access Level: Security
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKeys should be loaded
    # @return [Array<ApiKey>]
    def security_apikeys_get(opts = {})
      data, _status_code, _headers = security_apikeys_get_with_http_info(opts)
      data
    end

    # List ApiKeys
    # List all your existing ApiKeys. Required Access Level: Security
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which ApiKeys should be loaded
    # @return [Array<(Array<ApiKey>, Integer, Hash)>] Array<ApiKey> data, response status code and response headers
    def security_apikeys_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_apikeys_get ...'
      end
      # resource path
      local_var_path = '/security/apikeys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiKey>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_apikeys_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_apikeys_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add ApiKey
    # Add a new ApiKey. Required Access Level: Security
    # @param api_key_payload [ApiKeyPayload] 
    # @param [Hash] opts the optional parameters
    # @return [NewApiKey]
    def security_apikeys_post(api_key_payload, opts = {})
      data, _status_code, _headers = security_apikeys_post_with_http_info(api_key_payload, opts)
      data
    end

    # Add ApiKey
    # Add a new ApiKey. Required Access Level: Security
    # @param api_key_payload [ApiKeyPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewApiKey, Integer, Hash)>] NewApiKey data, response status code and response headers
    def security_apikeys_post_with_http_info(api_key_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_apikeys_post ...'
      end
      # verify the required parameter 'api_key_payload' is set
      if @api_client.config.client_side_validation && api_key_payload.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_payload' when calling SecurityApi.security_apikeys_post"
      end
      # resource path
      local_var_path = '/security/apikeys'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_key_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'NewApiKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_apikeys_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_apikeys_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete SMTP Credential
    # Delete your existing SMTP Credentials. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credential should be deleted
    # @return [nil]
    def security_smtp_by_name_delete(name, opts = {})
      security_smtp_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete SMTP Credential
    # Delete your existing SMTP Credentials. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credential should be deleted
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def security_smtp_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_smtp_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_smtp_by_name_delete"
      end
      # resource path
      local_var_path = '/security/smtp/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_smtp_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_smtp_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load SMTP Credential
    # Load your existing SMTP Credential info. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credential should be loaded
    # @return [SmtpCredentials]
    def security_smtp_by_name_get(name, opts = {})
      data, _status_code, _headers = security_smtp_by_name_get_with_http_info(name, opts)
      data
    end

    # Load SMTP Credential
    # Load your existing SMTP Credential info. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credential should be loaded
    # @return [Array<(SmtpCredentials, Integer, Hash)>] SmtpCredentials data, response status code and response headers
    def security_smtp_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_smtp_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_smtp_by_name_get"
      end
      # resource path
      local_var_path = '/security/smtp/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SmtpCredentials'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_smtp_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_smtp_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update SMTP Credential
    # Update your existing SMTP Credentials. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param smtp_credentials_payload [SmtpCredentialsPayload] 
    # @param [Hash] opts the optional parameters
    # @return [SmtpCredentials]
    def security_smtp_by_name_put(name, smtp_credentials_payload, opts = {})
      data, _status_code, _headers = security_smtp_by_name_put_with_http_info(name, smtp_credentials_payload, opts)
      data
    end

    # Update SMTP Credential
    # Update your existing SMTP Credentials. Required Access Level: Security
    # @param name [String] Name of the SMTP Credential
    # @param smtp_credentials_payload [SmtpCredentialsPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmtpCredentials, Integer, Hash)>] SmtpCredentials data, response status code and response headers
    def security_smtp_by_name_put_with_http_info(name, smtp_credentials_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_smtp_by_name_put ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SecurityApi.security_smtp_by_name_put"
      end
      # verify the required parameter 'smtp_credentials_payload' is set
      if @api_client.config.client_side_validation && smtp_credentials_payload.nil?
        fail ArgumentError, "Missing the required parameter 'smtp_credentials_payload' when calling SecurityApi.security_smtp_by_name_put"
      end
      # resource path
      local_var_path = '/security/smtp/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(smtp_credentials_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'SmtpCredentials'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_smtp_by_name_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_smtp_by_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SMTP Credentials
    # List all your existing SMTP Credentials. Required Access Level: Security
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credentials should be listed
    # @return [Array<SmtpCredentials>]
    def security_smtp_get(opts = {})
      data, _status_code, _headers = security_smtp_get_with_http_info(opts)
      data
    end

    # List SMTP Credentials
    # List all your existing SMTP Credentials. Required Access Level: Security
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subaccount Email of the subaccount of which credentials should be listed
    # @return [Array<(Array<SmtpCredentials>, Integer, Hash)>] Array<SmtpCredentials> data, response status code and response headers
    def security_smtp_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_smtp_get ...'
      end
      # resource path
      local_var_path = '/security/smtp'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subaccount'] = opts[:'subaccount'] if !opts[:'subaccount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SmtpCredentials>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_smtp_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_smtp_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add SMTP Credential
    # Add new SMTP Credential. Required Access Level: Security
    # @param smtp_credentials_payload [SmtpCredentialsPayload] 
    # @param [Hash] opts the optional parameters
    # @return [NewSmtpCredentials]
    def security_smtp_post(smtp_credentials_payload, opts = {})
      data, _status_code, _headers = security_smtp_post_with_http_info(smtp_credentials_payload, opts)
      data
    end

    # Add SMTP Credential
    # Add new SMTP Credential. Required Access Level: Security
    # @param smtp_credentials_payload [SmtpCredentialsPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewSmtpCredentials, Integer, Hash)>] NewSmtpCredentials data, response status code and response headers
    def security_smtp_post_with_http_info(smtp_credentials_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.security_smtp_post ...'
      end
      # verify the required parameter 'smtp_credentials_payload' is set
      if @api_client.config.client_side_validation && smtp_credentials_payload.nil?
        fail ArgumentError, "Missing the required parameter 'smtp_credentials_payload' when calling SecurityApi.security_smtp_post"
      end
      # resource path
      local_var_path = '/security/smtp'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(smtp_credentials_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'NewSmtpCredentials'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SecurityApi.security_smtp_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#security_smtp_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
