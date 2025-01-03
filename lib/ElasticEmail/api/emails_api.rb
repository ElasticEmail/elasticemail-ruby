=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

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

    # Get Status
    # Get status details of an email transaction. Required Access Level: ViewReports
    # @param transactionid [String] Transaction identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :show_failed Include Bounced email addresses. (default to false)
    # @option opts [Boolean] :show_sent Include Sent email addresses. (default to false)
    # @option opts [Boolean] :show_delivered Include all delivered email addresses. (default to false)
    # @option opts [Boolean] :show_pending Include Ready to send email addresses. (default to false)
    # @option opts [Boolean] :show_opened Include Opened email addresses. (default to false)
    # @option opts [Boolean] :show_clicked Include Clicked email addresses. (default to false)
    # @option opts [Boolean] :show_abuse Include Reported as abuse email addresses. (default to false)
    # @option opts [Boolean] :show_unsubscribed Include Unsubscribed email addresses. (default to false)
    # @option opts [Boolean] :show_errors Include error messages for bounced emails. (default to false)
    # @option opts [Boolean] :show_message_ids Include all MessageIDs for this transaction (default to false)
    # @return [EmailJobStatus]
    def emails_by_transactionid_status_get(transactionid, opts = {})
      data, _status_code, _headers = emails_by_transactionid_status_get_with_http_info(transactionid, opts)
      data
    end

    # Get Status
    # Get status details of an email transaction. Required Access Level: ViewReports
    # @param transactionid [String] Transaction identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :show_failed Include Bounced email addresses. (default to false)
    # @option opts [Boolean] :show_sent Include Sent email addresses. (default to false)
    # @option opts [Boolean] :show_delivered Include all delivered email addresses. (default to false)
    # @option opts [Boolean] :show_pending Include Ready to send email addresses. (default to false)
    # @option opts [Boolean] :show_opened Include Opened email addresses. (default to false)
    # @option opts [Boolean] :show_clicked Include Clicked email addresses. (default to false)
    # @option opts [Boolean] :show_abuse Include Reported as abuse email addresses. (default to false)
    # @option opts [Boolean] :show_unsubscribed Include Unsubscribed email addresses. (default to false)
    # @option opts [Boolean] :show_errors Include error messages for bounced emails. (default to false)
    # @option opts [Boolean] :show_message_ids Include all MessageIDs for this transaction (default to false)
    # @return [Array<(EmailJobStatus, Integer, Hash)>] EmailJobStatus data, response status code and response headers
    def emails_by_transactionid_status_get_with_http_info(transactionid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.emails_by_transactionid_status_get ...'
      end
      # verify the required parameter 'transactionid' is set
      if @api_client.config.client_side_validation && transactionid.nil?
        fail ArgumentError, "Missing the required parameter 'transactionid' when calling EmailsApi.emails_by_transactionid_status_get"
      end
      # resource path
      local_var_path = '/emails/{transactionid}/status'.sub('{' + 'transactionid' + '}', CGI.escape(transactionid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'showFailed'] = opts[:'show_failed'] if !opts[:'show_failed'].nil?
      query_params[:'showSent'] = opts[:'show_sent'] if !opts[:'show_sent'].nil?
      query_params[:'showDelivered'] = opts[:'show_delivered'] if !opts[:'show_delivered'].nil?
      query_params[:'showPending'] = opts[:'show_pending'] if !opts[:'show_pending'].nil?
      query_params[:'showOpened'] = opts[:'show_opened'] if !opts[:'show_opened'].nil?
      query_params[:'showClicked'] = opts[:'show_clicked'] if !opts[:'show_clicked'].nil?
      query_params[:'showAbuse'] = opts[:'show_abuse'] if !opts[:'show_abuse'].nil?
      query_params[:'showUnsubscribed'] = opts[:'show_unsubscribed'] if !opts[:'show_unsubscribed'].nil?
      query_params[:'showErrors'] = opts[:'show_errors'] if !opts[:'show_errors'].nil?
      query_params[:'showMessageIDs'] = opts[:'show_message_ids'] if !opts[:'show_message_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmailJobStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EmailsApi.emails_by_transactionid_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#emails_by_transactionid_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Bulk Emails CSV
    # Send to a list of contacts submitted in a CSV data file. The first column in the CSV must be the email address and the CSV must contain a header row. Additional fields can be included with a named header row and can be merged with the template using {merge} tags in the content.                           Example CSV:                           email, firstname, lastname              test1@gmail.com, michael, smith              test2@gmail.com, janet, smith                           Merge file must not be empty. Required Access Level: SendHttp
    # @param merge_email_payload [MergeEmailPayload] Email data
    # @param [Hash] opts the optional parameters
    # @return [EmailSend]
    def emails_mergefile_post(merge_email_payload, opts = {})
      data, _status_code, _headers = emails_mergefile_post_with_http_info(merge_email_payload, opts)
      data
    end

    # Send Bulk Emails CSV
    # Send to a list of contacts submitted in a CSV data file. The first column in the CSV must be the email address and the CSV must contain a header row. Additional fields can be included with a named header row and can be merged with the template using {merge} tags in the content.                           Example CSV:                           email, firstname, lastname              test1@gmail.com, michael, smith              test2@gmail.com, janet, smith                           Merge file must not be empty. Required Access Level: SendHttp
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
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

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
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

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
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

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
