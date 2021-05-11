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
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Contact
    # Deletes the provided contact. Required Access Level: ModifyContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def contacts_by_email_delete(email, opts = {})
      contacts_by_email_delete_with_http_info(email, opts)
      nil
    end

    # Delete Contact
    # Deletes the provided contact. Required Access Level: ModifyContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def contacts_by_email_delete_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_by_email_delete ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling ContactsApi.contacts_by_email_delete"
      end
      # resource path
      local_var_path = '/contacts/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
        :operation => :"ContactsApi.contacts_by_email_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_by_email_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Contact
    # Load detailed contact information for specified email. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def contacts_by_email_get(email, opts = {})
      data, _status_code, _headers = contacts_by_email_get_with_http_info(email, opts)
      data
    end

    # Load Contact
    # Load detailed contact information for specified email. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def contacts_by_email_get_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_by_email_get ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling ContactsApi.contacts_by_email_get"
      end
      # resource path
      local_var_path = '/contacts/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_by_email_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_by_email_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load History
    # Returns detailed history of specified Contact. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<ContactHistory>]
    def contacts_by_email_history_get(email, opts = {})
      data, _status_code, _headers = contacts_by_email_history_get_with_http_info(email, opts)
      data
    end

    # Load History
    # Returns detailed history of specified Contact. Required Access Level: ViewContacts
    # @param email [String] Proper email address.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<ContactHistory>, Integer, Hash)>] Array<ContactHistory> data, response status code and response headers
    def contacts_by_email_history_get_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_by_email_history_get ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling ContactsApi.contacts_by_email_history_get"
      end
      # resource path
      local_var_path = '/contacts/{email}/history'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ContactHistory>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_by_email_history_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_by_email_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Contact
    # Update selected contact. Omitted contact's fields will not be changed. Required Access Level: ModifyContacts
    # @param email [String] Proper email address.
    # @param contact_update_payload [ContactUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def contacts_by_email_put(email, contact_update_payload, opts = {})
      data, _status_code, _headers = contacts_by_email_put_with_http_info(email, contact_update_payload, opts)
      data
    end

    # Update Contact
    # Update selected contact. Omitted contact&#39;s fields will not be changed. Required Access Level: ModifyContacts
    # @param email [String] Proper email address.
    # @param contact_update_payload [ContactUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def contacts_by_email_put_with_http_info(email, contact_update_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_by_email_put ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling ContactsApi.contacts_by_email_put"
      end
      # verify the required parameter 'contact_update_payload' is set
      if @api_client.config.client_side_validation && contact_update_payload.nil?
        fail ArgumentError, "Missing the required parameter 'contact_update_payload' when calling ContactsApi.contacts_by_email_put"
      end
      # resource path
      local_var_path = '/contacts/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_update_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_by_email_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_by_email_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Contacts Bulk
    # Deletes provided contacts in bulk. Required Access Level: ModifyContacts
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def contacts_delete_post(emails_payload, opts = {})
      contacts_delete_post_with_http_info(emails_payload, opts)
      nil
    end

    # Delete Contacts Bulk
    # Deletes provided contacts in bulk. Required Access Level: ModifyContacts
    # @param emails_payload [EmailsPayload] Provide either rule or a list of emails, not both.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def contacts_delete_post_with_http_info(emails_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_delete_post ...'
      end
      # verify the required parameter 'emails_payload' is set
      if @api_client.config.client_side_validation && emails_payload.nil?
        fail ArgumentError, "Missing the required parameter 'emails_payload' when calling ContactsApi.contacts_delete_post"
      end
      # resource path
      local_var_path = '/contacts/delete'

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
        :operation => :"ContactsApi.contacts_delete_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_delete_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check Export Status
    # Check the current status of the export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [ExportStatus]
    def contacts_export_by_id_status_get(id, opts = {})
      data, _status_code, _headers = contacts_export_by_id_status_get_with_http_info(id, opts)
      data
    end

    # Check Export Status
    # Check the current status of the export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportStatus, Integer, Hash)>] ExportStatus data, response status code and response headers
    def contacts_export_by_id_status_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_export_by_id_status_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.contacts_export_by_id_status_get"
      end
      # resource path
      local_var_path = '/contacts/export/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ExportStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_export_by_id_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_export_by_id_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export Contacts
    # Request an Export of specified Contacts. Required Access Level: Export
    # @param [Hash] opts the optional parameters
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [String] :rule Query used for filtering.
    # @option opts [Array<String>] :emails Comma delimited list of contact emails
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [ExportLink]
    def contacts_export_post(opts = {})
      data, _status_code, _headers = contacts_export_post_with_http_info(opts)
      data
    end

    # Export Contacts
    # Request an Export of specified Contacts. Required Access Level: Export
    # @param [Hash] opts the optional parameters
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [String] :rule Query used for filtering.
    # @option opts [Array<String>] :emails Comma delimited list of contact emails
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [Array<(ExportLink, Integer, Hash)>] ExportLink data, response status code and response headers
    def contacts_export_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_export_post ...'
      end
      # resource path
      local_var_path = '/contacts/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fileFormat'] = opts[:'file_format'] if !opts[:'file_format'].nil?
      query_params[:'rule'] = opts[:'rule'] if !opts[:'rule'].nil?
      query_params[:'emails'] = @api_client.build_collection_param(opts[:'emails'], :multi) if !opts[:'emails'].nil?
      query_params[:'compressionFormat'] = opts[:'compression_format'] if !opts[:'compression_format'].nil?
      query_params[:'fileName'] = opts[:'file_name'] if !opts[:'file_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExportLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_export_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_export_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Contacts
    # Returns a list of contacts. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Contact>]
    def contacts_get(opts = {})
      data, _status_code, _headers = contacts_get_with_http_info(opts)
      data
    end

    # Load Contacts
    # Returns a list of contacts. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Contact>, Integer, Hash)>] Array<Contact> data, response status code and response headers
    def contacts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_get ...'
      end
      # resource path
      local_var_path = '/contacts'

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
      return_type = opts[:debug_return_type] || 'Array<Contact>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload Contacts
    # Upload contacts from a file. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :list_name Name of an existing list to add these contacts to
    # @option opts [String] :encoding_name In what encoding the file is uploaded
    # @option opts [File] :file 
    # @return [nil]
    def contacts_import_post(opts = {})
      contacts_import_post_with_http_info(opts)
      nil
    end

    # Upload Contacts
    # Upload contacts from a file. Required Access Level: ModifyContacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :list_name Name of an existing list to add these contacts to
    # @option opts [String] :encoding_name In what encoding the file is uploaded
    # @option opts [File] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def contacts_import_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_import_post ...'
      end
      # resource path
      local_var_path = '/contacts/import'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'listName'] = opts[:'list_name'] if !opts[:'list_name'].nil?
      query_params[:'encodingName'] = opts[:'encoding_name'] if !opts[:'encoding_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

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
        :operation => :"ContactsApi.contacts_import_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_import_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Contact
    # Add new Contacts to your Lists. Up to 1000 can be added (for more please refer to the import request). Required Access Level: ModifyContacts
    # @param contact_payload [Array<ContactPayload>] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :listnames Names of lists to which the uploaded contacts should be added to
    # @return [Array<Contact>]
    def contacts_post(contact_payload, opts = {})
      data, _status_code, _headers = contacts_post_with_http_info(contact_payload, opts)
      data
    end

    # Add Contact
    # Add new Contacts to your Lists. Up to 1000 can be added (for more please refer to the import request). Required Access Level: ModifyContacts
    # @param contact_payload [Array<ContactPayload>] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :listnames Names of lists to which the uploaded contacts should be added to
    # @return [Array<(Array<Contact>, Integer, Hash)>] Array<Contact> data, response status code and response headers
    def contacts_post_with_http_info(contact_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.contacts_post ...'
      end
      # verify the required parameter 'contact_payload' is set
      if @api_client.config.client_side_validation && contact_payload.nil?
        fail ArgumentError, "Missing the required parameter 'contact_payload' when calling ContactsApi.contacts_post"
      end
      # resource path
      local_var_path = '/contacts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'listnames'] = @api_client.build_collection_param(opts[:'listnames'], :multi) if !opts[:'listnames'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Contact>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.contacts_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#contacts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
