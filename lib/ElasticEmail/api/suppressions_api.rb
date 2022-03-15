=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module ElasticEmail
  class SuppressionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Bounce List
    # Retrieve your list of bounced emails. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Suppression>]
    def suppressions_bounces_get(opts = {})
      data, _status_code, _headers = suppressions_bounces_get_with_http_info(opts)
      data
    end

    # Get Bounce List
    # Retrieve your list of bounced emails. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_bounces_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_bounces_get ...'
      end
      # resource path
      local_var_path = '/suppressions/bounces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_bounces_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_bounces_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Bounces Async
    # Add Bounced. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [nil]
    def suppressions_bounces_import_post(opts = {})
      suppressions_bounces_import_post_with_http_info(opts)
      nil
    end

    # Add Bounces Async
    # Add Bounced. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suppressions_bounces_import_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_bounces_import_post ...'
      end
      # resource path
      local_var_path = '/suppressions/bounces/import'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_bounces_import_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_bounces_import_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Bounces
    # Add Bounced. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as bounces. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<Suppression>]
    def suppressions_bounces_post(request_body, opts = {})
      data, _status_code, _headers = suppressions_bounces_post_with_http_info(request_body, opts)
      data
    end

    # Add Bounces
    # Add Bounced. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as bounces. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_bounces_post_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_bounces_post ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SuppressionsApi.suppressions_bounces_post"
      end
      # resource path
      local_var_path = '/suppressions/bounces'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_bounces_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_bounces_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Suppression
    # Delete Suppression. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suppressions_by_email_delete(email, opts = {})
      suppressions_by_email_delete_with_http_info(email, opts)
      nil
    end

    # Delete Suppression
    # Delete Suppression. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suppressions_by_email_delete_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_by_email_delete ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling SuppressionsApi.suppressions_by_email_delete"
      end
      # resource path
      local_var_path = '/suppressions/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
        :operation => :"SuppressionsApi.suppressions_by_email_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_by_email_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Suppression
    # Retrieve your suppression. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Suppression]
    def suppressions_by_email_get(email, opts = {})
      data, _status_code, _headers = suppressions_by_email_get_with_http_info(email, opts)
      data
    end

    # Get Suppression
    # Retrieve your suppression. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Suppression, Integer, Hash)>] Suppression data, response status code and response headers
    def suppressions_by_email_get_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_by_email_get ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling SuppressionsApi.suppressions_by_email_get"
      end
      # resource path
      local_var_path = '/suppressions/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Suppression'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_by_email_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_by_email_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Complaints List
    # Retrieve your list of complaints. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Suppression>]
    def suppressions_complaints_get(opts = {})
      data, _status_code, _headers = suppressions_complaints_get_with_http_info(opts)
      data
    end

    # Get Complaints List
    # Retrieve your list of complaints. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_complaints_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_complaints_get ...'
      end
      # resource path
      local_var_path = '/suppressions/complaints'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_complaints_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_complaints_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Complaints Async
    # Add Complaints. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [nil]
    def suppressions_complaints_import_post(opts = {})
      suppressions_complaints_import_post_with_http_info(opts)
      nil
    end

    # Add Complaints Async
    # Add Complaints. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suppressions_complaints_import_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_complaints_import_post ...'
      end
      # resource path
      local_var_path = '/suppressions/complaints/import'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_complaints_import_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_complaints_import_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Complaints
    # Add Complaints. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as complaints. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<Suppression>]
    def suppressions_complaints_post(request_body, opts = {})
      data, _status_code, _headers = suppressions_complaints_post_with_http_info(request_body, opts)
      data
    end

    # Add Complaints
    # Add Complaints. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as complaints. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_complaints_post_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_complaints_post ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SuppressionsApi.suppressions_complaints_post"
      end
      # resource path
      local_var_path = '/suppressions/complaints'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_complaints_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_complaints_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Suppressions
    # Retrieve your suppressions. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Suppression>]
    def suppressions_get(opts = {})
      data, _status_code, _headers = suppressions_get_with_http_info(opts)
      data
    end

    # Get Suppressions
    # Retrieve your suppressions. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_get ...'
      end
      # resource path
      local_var_path = '/suppressions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Unsubscribes List
    # Retrieve your list of unsubscribes. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Suppression>]
    def suppressions_unsubscribes_get(opts = {})
      data, _status_code, _headers = suppressions_unsubscribes_get_with_http_info(opts)
      data
    end

    # Get Unsubscribes List
    # Retrieve your list of unsubscribes. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_unsubscribes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_unsubscribes_get ...'
      end
      # resource path
      local_var_path = '/suppressions/unsubscribes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_unsubscribes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_unsubscribes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Unsubscribes Async
    # Add Unsubscribes. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [nil]
    def suppressions_unsubscribes_import_post(opts = {})
      suppressions_unsubscribes_import_post_with_http_info(opts)
      nil
    end

    # Add Unsubscribes Async
    # Add Unsubscribes. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suppressions_unsubscribes_import_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_unsubscribes_import_post ...'
      end
      # resource path
      local_var_path = '/suppressions/unsubscribes/import'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_unsubscribes_import_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_unsubscribes_import_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Unsubscribes
    # Add Unsubscribes. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as unsubscribes. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<Suppression>]
    def suppressions_unsubscribes_post(request_body, opts = {})
      data, _status_code, _headers = suppressions_unsubscribes_post_with_http_info(request_body, opts)
      data
    end

    # Add Unsubscribes
    # Add Unsubscribes. Required Access Level: ModifyContacts
    # @param request_body [Array<String>] Emails to add as unsubscribes. Limited to 1000 per request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Suppression>, Integer, Hash)>] Array<Suppression> data, response status code and response headers
    def suppressions_unsubscribes_post_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionsApi.suppressions_unsubscribes_post ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SuppressionsApi.suppressions_unsubscribes_post"
      end
      # resource path
      local_var_path = '/suppressions/unsubscribes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Suppression>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SuppressionsApi.suppressions_unsubscribes_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionsApi#suppressions_unsubscribes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
