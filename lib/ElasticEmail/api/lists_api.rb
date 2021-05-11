=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    To start using this API, you will need your Access Token (available <a href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a href=\"https://api.elasticemail.com/public/help\">here</a>.

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module ElasticEmail
  class ListsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Contacts to List
    # Add existing Contacts to specified list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [ContactsList]
    def lists_by_name_contacts_post(name, emails_payload, opts = {})
      data, _status_code, _headers = lists_by_name_contacts_post_with_http_info(name, emails_payload, opts)
      data
    end

    # Add Contacts to List
    # Add existing Contacts to specified list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactsList, Integer, Hash)>] ContactsList data, response status code and response headers
    def lists_by_name_contacts_post_with_http_info(name, emails_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_by_name_contacts_post ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ListsApi.lists_by_name_contacts_post"
      end
      # verify the required parameter 'emails_payload' is set
      if @api_client.config.client_side_validation && emails_payload.nil?
        fail ArgumentError, "Missing the required parameter 'emails_payload' when calling ListsApi.lists_by_name_contacts_post"
      end
      # resource path
      local_var_path = '/lists/{name}/contacts'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(emails_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_by_name_contacts_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_by_name_contacts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Contacts from List
    # Remove specified Contacts from your list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def lists_by_name_contacts_remove_post(name, emails_payload, opts = {})
      lists_by_name_contacts_remove_post_with_http_info(name, emails_payload, opts)
      nil
    end

    # Remove Contacts from List
    # Remove specified Contacts from your list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def lists_by_name_contacts_remove_post_with_http_info(name, emails_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_by_name_contacts_remove_post ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ListsApi.lists_by_name_contacts_remove_post"
      end
      # verify the required parameter 'emails_payload' is set
      if @api_client.config.client_side_validation && emails_payload.nil?
        fail ArgumentError, "Missing the required parameter 'emails_payload' when calling ListsApi.lists_by_name_contacts_remove_post"
      end
      # resource path
      local_var_path = '/lists/{name}/contacts/remove'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(emails_payload)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_by_name_contacts_remove_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_by_name_contacts_remove_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete List
    # Deletes List and removes all the Contacts from it (does not delete Contacts). Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def lists_by_name_delete(name, opts = {})
      lists_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete List
    # Deletes List and removes all the Contacts from it (does not delete Contacts). Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def lists_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ListsApi.lists_by_name_delete"
      end
      # resource path
      local_var_path = '/lists/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"ListsApi.lists_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load List
    # Returns detailed information about specified list. Required Access Level: ViewContacts
    # @param name [String] Name of your list.
    # @param [Hash] opts the optional parameters
    # @return [ContactsList]
    def lists_by_name_get(name, opts = {})
      data, _status_code, _headers = lists_by_name_get_with_http_info(name, opts)
      data
    end

    # Load List
    # Returns detailed information about specified list. Required Access Level: ViewContacts
    # @param name [String] Name of your list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactsList, Integer, Hash)>] ContactsList data, response status code and response headers
    def lists_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ListsApi.lists_by_name_get"
      end
      # resource path
      local_var_path = '/lists/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update List
    # Update existing list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param list_update_payload [ListUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [ContactsList]
    def lists_by_name_put(name, list_update_payload, opts = {})
      data, _status_code, _headers = lists_by_name_put_with_http_info(name, list_update_payload, opts)
      data
    end

    # Update List
    # Update existing list. Required Access Level: ModifyContacts
    # @param name [String] Name of your list.
    # @param list_update_payload [ListUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactsList, Integer, Hash)>] ContactsList data, response status code and response headers
    def lists_by_name_put_with_http_info(name, list_update_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_by_name_put ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ListsApi.lists_by_name_put"
      end
      # verify the required parameter 'list_update_payload' is set
      if @api_client.config.client_side_validation && list_update_payload.nil?
        fail ArgumentError, "Missing the required parameter 'list_update_payload' when calling ListsApi.lists_by_name_put"
      end
      # resource path
      local_var_path = '/lists/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_update_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_by_name_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_by_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Lists
    # Returns all your existing lists. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<ContactsList>]
    def lists_get(opts = {})
      data, _status_code, _headers = lists_get_with_http_info(opts)
      data
    end

    # Load Lists
    # Returns all your existing lists. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<ContactsList>, Integer, Hash)>] Array<ContactsList> data, response status code and response headers
    def lists_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_get ...'
      end
      # resource path
      local_var_path = '/lists'

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
      return_type = opts[:debug_return_type] || 'Array<ContactsList>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add List
    # Add a new list. Required Access Level: ModifyContacts
    # @param list_payload [ListPayload] 
    # @param [Hash] opts the optional parameters
    # @return [ContactsList]
    def lists_post(list_payload, opts = {})
      data, _status_code, _headers = lists_post_with_http_info(list_payload, opts)
      data
    end

    # Add List
    # Add a new list. Required Access Level: ModifyContacts
    # @param list_payload [ListPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactsList, Integer, Hash)>] ContactsList data, response status code and response headers
    def lists_post_with_http_info(list_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListsApi.lists_post ...'
      end
      # verify the required parameter 'list_payload' is set
      if @api_client.config.client_side_validation && list_payload.nil?
        fail ArgumentError, "Missing the required parameter 'list_payload' when calling ListsApi.lists_post"
      end
      # resource path
      local_var_path = '/lists'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ListsApi.lists_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#lists_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
