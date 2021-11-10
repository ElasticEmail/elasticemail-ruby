=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a target=\"_blank\" href=\"https://api.elasticemail.com/public/help\">here</a>.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module ElasticEmail
  class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete File
    # Permanently deletes the file from your Account. Required Access Level: ModifyFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def files_by_name_delete(name, opts = {})
      files_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete File
    # Permanently deletes the file from your Account. Required Access Level: ModifyFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def files_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.files_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FilesApi.files_by_name_delete"
      end
      # resource path
      local_var_path = '/files/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"FilesApi.files_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#files_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download File
    # Gets content of the specified File. Required Access Level: ViewFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def files_by_name_get(name, opts = {})
      data, _status_code, _headers = files_by_name_get_with_http_info(name, opts)
      data
    end

    # Download File
    # Gets content of the specified File. Required Access Level: ViewFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def files_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.files_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FilesApi.files_by_name_get"
      end
      # resource path
      local_var_path = '/files/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"FilesApi.files_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#files_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load File Details
    # Returns the specified File's details. Required Access Level: ViewFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [FileInfo]
    def files_by_name_info_get(name, opts = {})
      data, _status_code, _headers = files_by_name_info_get_with_http_info(name, opts)
      data
    end

    # Load File Details
    # Returns the specified File&#39;s details. Required Access Level: ViewFiles
    # @param name [String] Name of your file including extension.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileInfo, Integer, Hash)>] FileInfo data, response status code and response headers
    def files_by_name_info_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.files_by_name_info_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FilesApi.files_by_name_info_get"
      end
      # resource path
      local_var_path = '/files/{name}/info'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'FileInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"FilesApi.files_by_name_info_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#files_by_name_info_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Files
    # Returns a list of all your available files. Required Access Level: ViewFiles
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<FileInfo>]
    def files_get(opts = {})
      data, _status_code, _headers = files_get_with_http_info(opts)
      data
    end

    # List Files
    # Returns a list of all your available files. Required Access Level: ViewFiles
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<FileInfo>, Integer, Hash)>] Array<FileInfo> data, response status code and response headers
    def files_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.files_get ...'
      end
      # resource path
      local_var_path = '/files'

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
      return_type = opts[:debug_return_type] || 'Array<FileInfo>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"FilesApi.files_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#files_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload File
    # Uploads selected file to the server. Required Access Level: ModifyFiles
    # @param file_payload [FilePayload] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expires_after_days After how many days should the file be deleted.
    # @return [FileInfo]
    def files_post(file_payload, opts = {})
      data, _status_code, _headers = files_post_with_http_info(file_payload, opts)
      data
    end

    # Upload File
    # Uploads selected file to the server. Required Access Level: ModifyFiles
    # @param file_payload [FilePayload] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expires_after_days After how many days should the file be deleted.
    # @return [Array<(FileInfo, Integer, Hash)>] FileInfo data, response status code and response headers
    def files_post_with_http_info(file_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.files_post ...'
      end
      # verify the required parameter 'file_payload' is set
      if @api_client.config.client_side_validation && file_payload.nil?
        fail ArgumentError, "Missing the required parameter 'file_payload' when calling FilesApi.files_post"
      end
      # resource path
      local_var_path = '/files'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expiresAfterDays'] = opts[:'expires_after_days'] if !opts[:'expires_after_days'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'FileInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"FilesApi.files_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#files_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
