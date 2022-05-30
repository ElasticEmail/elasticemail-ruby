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
  class VerificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Email Verification Result
    # Delete a result with given email if exists. Required Access Level: VerifyEmails
    # @param email [String] Email address to verification
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def verifications_by_email_delete(email, opts = {})
      verifications_by_email_delete_with_http_info(email, opts)
      nil
    end

    # Delete Email Verification Result
    # Delete a result with given email if exists. Required Access Level: VerifyEmails
    # @param email [String] Email address to verification
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def verifications_by_email_delete_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_by_email_delete ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling VerificationsApi.verifications_by_email_delete"
      end
      # resource path
      local_var_path = '/verifications/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
        :operation => :"VerificationsApi.verifications_by_email_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_by_email_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Email Verification Result
    # Returns a result of verified email. Required Access Level: ViewEmailVerifications
    # @param email [String] Email address to view verification result of
    # @param [Hash] opts the optional parameters
    # @return [EmailValidationResult]
    def verifications_by_email_get(email, opts = {})
      data, _status_code, _headers = verifications_by_email_get_with_http_info(email, opts)
      data
    end

    # Get Email Verification Result
    # Returns a result of verified email. Required Access Level: ViewEmailVerifications
    # @param email [String] Email address to view verification result of
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailValidationResult, Integer, Hash)>] EmailValidationResult data, response status code and response headers
    def verifications_by_email_get_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_by_email_get ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling VerificationsApi.verifications_by_email_get"
      end
      # resource path
      local_var_path = '/verifications/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
      return_type = opts[:debug_return_type] || 'EmailValidationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_by_email_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_by_email_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Email
    # Verify single email address and returns result of verification. Required Access Level: VerifyEmails
    # @param email [String] Email address to verify
    # @param [Hash] opts the optional parameters
    # @return [EmailValidationResult]
    def verifications_by_email_post(email, opts = {})
      data, _status_code, _headers = verifications_by_email_post_with_http_info(email, opts)
      data
    end

    # Verify Email
    # Verify single email address and returns result of verification. Required Access Level: VerifyEmails
    # @param email [String] Email address to verify
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailValidationResult, Integer, Hash)>] EmailValidationResult data, response status code and response headers
    def verifications_by_email_post_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_by_email_post ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling VerificationsApi.verifications_by_email_post"
      end
      # resource path
      local_var_path = '/verifications/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
      return_type = opts[:debug_return_type] || 'EmailValidationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_by_email_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_by_email_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete File Verification Result
    # Delete Verification Results if they exist. Required Access Level: VerifyEmails
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def verifications_files_by_id_delete(id, opts = {})
      verifications_files_by_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete File Verification Result
    # Delete Verification Results if they exist. Required Access Level: VerifyEmails
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def verifications_files_by_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_by_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VerificationsApi.verifications_files_by_id_delete"
      end
      # resource path
      local_var_path = '/verifications/files/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"VerificationsApi.verifications_files_by_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_by_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download File Verification Result
    # Download verification results as a ZIP file. Required Access Level: VerifyEmails
    # @param id [String] Verification ID to download
    # @param [Hash] opts the optional parameters
    # @return [File]
    def verifications_files_by_id_result_download_get(id, opts = {})
      data, _status_code, _headers = verifications_files_by_id_result_download_get_with_http_info(id, opts)
      data
    end

    # Download File Verification Result
    # Download verification results as a ZIP file. Required Access Level: VerifyEmails
    # @param id [String] Verification ID to download
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def verifications_files_by_id_result_download_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_by_id_result_download_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VerificationsApi.verifications_files_by_id_result_download_get"
      end
      # resource path
      local_var_path = '/verifications/files/{id}/result/download'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_files_by_id_result_download_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_by_id_result_download_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Detailed File Verification Result
    # Returns status and results (if verified) of file with given ID. Required Access Level: ViewEmailVerifications
    # @param id [String] ID of the Verification to display status of
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned email verification results
    # @option opts [Integer] :offset How many result items should be returned ahead
    # @return [VerificationFileResultDetails]
    def verifications_files_by_id_result_get(id, opts = {})
      data, _status_code, _headers = verifications_files_by_id_result_get_with_http_info(id, opts)
      data
    end

    # Get Detailed File Verification Result
    # Returns status and results (if verified) of file with given ID. Required Access Level: ViewEmailVerifications
    # @param id [String] ID of the Verification to display status of
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned email verification results
    # @option opts [Integer] :offset How many result items should be returned ahead
    # @return [Array<(VerificationFileResultDetails, Integer, Hash)>] VerificationFileResultDetails data, response status code and response headers
    def verifications_files_by_id_result_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_by_id_result_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VerificationsApi.verifications_files_by_id_result_get"
      end
      # resource path
      local_var_path = '/verifications/files/{id}/result'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'VerificationFileResultDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_files_by_id_result_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_by_id_result_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start verification
    # Start a verification of the previously uploaded file with emails. Required Access Level: VerifyEmails
    # @param id [String] File ID to start verification
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def verifications_files_by_id_verification_post(id, opts = {})
      verifications_files_by_id_verification_post_with_http_info(id, opts)
      nil
    end

    # Start verification
    # Start a verification of the previously uploaded file with emails. Required Access Level: VerifyEmails
    # @param id [String] File ID to start verification
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def verifications_files_by_id_verification_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_by_id_verification_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VerificationsApi.verifications_files_by_id_verification_post"
      end
      # resource path
      local_var_path = '/verifications/files/{id}/verification'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"VerificationsApi.verifications_files_by_id_verification_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_by_id_verification_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload File with Emails
    # Uploads a CSV file with list of emails that can then be triggered for verification. An 'email' column is required. Required Access Level: VerifyEmails
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [VerificationFileResult]
    def verifications_files_post(opts = {})
      data, _status_code, _headers = verifications_files_post_with_http_info(opts)
      data
    end

    # Upload File with Emails
    # Uploads a CSV file with list of emails that can then be triggered for verification. An &#39;email&#39; column is required. Required Access Level: VerifyEmails
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @return [Array<(VerificationFileResult, Integer, Hash)>] VerificationFileResult data, response status code and response headers
    def verifications_files_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_post ...'
      end
      # resource path
      local_var_path = '/verifications/files'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
      return_type = opts[:debug_return_type] || 'VerificationFileResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_files_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Files Verification Results
    # Returns a list of uploaded files, their statuses and results. Required Access Level: ViewEmailVerifications
    # @param [Hash] opts the optional parameters
    # @return [Array<VerificationFileResult>]
    def verifications_files_result_get(opts = {})
      data, _status_code, _headers = verifications_files_result_get_with_http_info(opts)
      data
    end

    # Get Files Verification Results
    # Returns a list of uploaded files, their statuses and results. Required Access Level: ViewEmailVerifications
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VerificationFileResult>, Integer, Hash)>] Array<VerificationFileResult> data, response status code and response headers
    def verifications_files_result_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_files_result_get ...'
      end
      # resource path
      local_var_path = '/verifications/files/result'

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
      return_type = opts[:debug_return_type] || 'Array<VerificationFileResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_files_result_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_files_result_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Emails Verification Results
    # Returns a results of all verified single emails. Required Access Level: ViewEmailVerifications
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<EmailValidationResult>]
    def verifications_get(opts = {})
      data, _status_code, _headers = verifications_get_with_http_info(opts)
      data
    end

    # Get Emails Verification Results
    # Returns a results of all verified single emails. Required Access Level: ViewEmailVerifications
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<EmailValidationResult>, Integer, Hash)>] Array<EmailValidationResult> data, response status code and response headers
    def verifications_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerificationsApi.verifications_get ...'
      end
      # resource path
      local_var_path = '/verifications'

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
      return_type = opts[:debug_return_type] || 'Array<EmailValidationResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"VerificationsApi.verifications_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerificationsApi#verifications_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
