=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a target=\"_blank\" href=\"https://api.elasticemail.com/public/help\">here</a>.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module ElasticEmail
  class EmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # View Email
    # Returns email details for viewing or rendering. Required Access Level: None
    # @param msgid [String] Message identifier
    # @param [Hash] opts the optional parameters
    # @return [EmailData]
    def emails_by_msgid_view_get(msgid, opts = {})
      data, _status_code, _headers = emails_by_msgid_view_get_with_http_info(msgid, opts)
      data
    end

    # View Email
    # Returns email details for viewing or rendering. Required Access Level: None
    # @param msgid [String] Message identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailData, Integer, Hash)>] EmailData data, response status code and response headers
    def emails_by_msgid_view_get_with_http_info(msgid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.emails_by_msgid_view_get ...'
      end
      # verify the required parameter 'msgid' is set
      if @api_client.config.client_side_validation && msgid.nil?
        fail ArgumentError, "Missing the required parameter 'msgid' when calling EmailsApi.emails_by_msgid_view_get"
      end
      # resource path
      local_var_path = '/emails/{msgid}/view'.sub('{' + 'msgid' + '}', CGI.escape(msgid.to_s))

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
      return_type = opts[:debug_return_type] || 'EmailData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EmailsApi.emails_by_msgid_view_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#emails_by_msgid_view_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Bulk Emails CSV
    # Send bulk merge email. Required Access Level: SendHttp
    # @param merge_email_payload [MergeEmailPayload] Email data
    # @param [Hash] opts the optional parameters
    # @return [EmailSend]
    def emails_mergefile_post(merge_email_payload, opts = {})
      data, _status_code, _headers = emails_mergefile_post_with_http_info(merge_email_payload, opts)
      data
    end

    # Send Bulk Emails CSV
    # Send bulk merge email. Required Access Level: SendHttp
    # @param merge_email_payload [MergeEmailPayload] Email data
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailSend, Integer, Hash)>] EmailSend data, response status code and response headers
    def emails_mergefile_post_with_http_info(merge_email_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.emails_mergefile_post ...'
      end
      # verify the required parameter 'merge_email_payload' is set
      if @api_client.config.client_side_validation && merge_email_payload.nil?
        fail ArgumentError, "Missing the required parameter 'merge_email_payload' when calling EmailsApi.emails_mergefile_post"
      end
      # resource path
      local_var_path = '/emails/mergefile'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(merge_email_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'EmailSend'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EmailsApi.emails_mergefile_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#emails_mergefile_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Bulk Emails
    # Send bulk merge email. Required Access Level: SendHttp
    # @param email_message_data [EmailMessageData] Email data
    # @param [Hash] opts the optional parameters
    # @return [EmailSend]
    def emails_post(email_message_data, opts = {})
      data, _status_code, _headers = emails_post_with_http_info(email_message_data, opts)
      data
    end

    # Send Bulk Emails
    # Send bulk merge email. Required Access Level: SendHttp
    # @param email_message_data [EmailMessageData] Email data
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailSend, Integer, Hash)>] EmailSend data, response status code and response headers
    def emails_post_with_http_info(email_message_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.emails_post ...'
      end
      # verify the required parameter 'email_message_data' is set
      if @api_client.config.client_side_validation && email_message_data.nil?
        fail ArgumentError, "Missing the required parameter 'email_message_data' when calling EmailsApi.emails_post"
      end
      # resource path
      local_var_path = '/emails'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(email_message_data)

      # return_type
      return_type = opts[:debug_return_type] || 'EmailSend'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EmailsApi.emails_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#emails_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Transactional Email
    # Send transactional emails (recipients will be known to each other). Required Access Level: SendHttp
    # @param email_transactional_message_data [EmailTransactionalMessageData] Email data
    # @param [Hash] opts the optional parameters
    # @return [EmailSend]
    def emails_transactional_post(email_transactional_message_data, opts = {})
      data, _status_code, _headers = emails_transactional_post_with_http_info(email_transactional_message_data, opts)
      data
    end

    # Send Transactional Email
    # Send transactional emails (recipients will be known to each other). Required Access Level: SendHttp
    # @param email_transactional_message_data [EmailTransactionalMessageData] Email data
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailSend, Integer, Hash)>] EmailSend data, response status code and response headers
    def emails_transactional_post_with_http_info(email_transactional_message_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.emails_transactional_post ...'
      end
      # verify the required parameter 'email_transactional_message_data' is set
      if @api_client.config.client_side_validation && email_transactional_message_data.nil?
        fail ArgumentError, "Missing the required parameter 'email_transactional_message_data' when calling EmailsApi.emails_transactional_post"
      end
      # resource path
      local_var_path = '/emails/transactional'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(email_transactional_message_data)

      # return_type
      return_type = opts[:debug_return_type] || 'EmailSend'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EmailsApi.emails_transactional_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#emails_transactional_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
