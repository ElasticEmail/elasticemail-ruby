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
  class SegmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Segment
    # Delete an existing segment. Required Access Level: ModifyContacts
    # @param name [String] Name of your segment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def segments_by_name_delete(name, opts = {})
      segments_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete Segment
    # Delete an existing segment. Required Access Level: ModifyContacts
    # @param name [String] Name of your segment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def segments_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.segments_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SegmentsApi.segments_by_name_delete"
      end
      # resource path
      local_var_path = '/segments/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"SegmentsApi.segments_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#segments_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Segment
    # Returns details for the specified segment. Required Access Level: ViewContacts
    # @param name [String] Name of the segment you want to load. Will load all contacts if the &#39;All Contacts&#39; name has been provided
    # @param [Hash] opts the optional parameters
    # @return [Segment]
    def segments_by_name_get(name, opts = {})
      data, _status_code, _headers = segments_by_name_get_with_http_info(name, opts)
      data
    end

    # Load Segment
    # Returns details for the specified segment. Required Access Level: ViewContacts
    # @param name [String] Name of the segment you want to load. Will load all contacts if the &#39;All Contacts&#39; name has been provided
    # @param [Hash] opts the optional parameters
    # @return [Array<(Segment, Integer, Hash)>] Segment data, response status code and response headers
    def segments_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.segments_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SegmentsApi.segments_by_name_get"
      end
      # resource path
      local_var_path = '/segments/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'Segment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.segments_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#segments_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Segment
    # Rename or change RULE for your segment. Required Access Level: ModifyContacts
    # @param name [String] Name of your segment.
    # @param segment_payload [SegmentPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Segment]
    def segments_by_name_put(name, segment_payload, opts = {})
      data, _status_code, _headers = segments_by_name_put_with_http_info(name, segment_payload, opts)
      data
    end

    # Update Segment
    # Rename or change RULE for your segment. Required Access Level: ModifyContacts
    # @param name [String] Name of your segment.
    # @param segment_payload [SegmentPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Segment, Integer, Hash)>] Segment data, response status code and response headers
    def segments_by_name_put_with_http_info(name, segment_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.segments_by_name_put ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SegmentsApi.segments_by_name_put"
      end
      # verify the required parameter 'segment_payload' is set
      if @api_client.config.client_side_validation && segment_payload.nil?
        fail ArgumentError, "Missing the required parameter 'segment_payload' when calling SegmentsApi.segments_by_name_put"
      end
      # resource path
      local_var_path = '/segments/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(segment_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'Segment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.segments_by_name_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#segments_by_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Segments
    # Returns a list of all your available Segments. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<Segment>]
    def segments_get(opts = {})
      data, _status_code, _headers = segments_get_with_http_info(opts)
      data
    end

    # Load Segments
    # Returns a list of all your available Segments. Required Access Level: ViewContacts
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<Segment>, Integer, Hash)>] Array<Segment> data, response status code and response headers
    def segments_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.segments_get ...'
      end
      # resource path
      local_var_path = '/segments'

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
      return_type = opts[:debug_return_type] || 'Array<Segment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.segments_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#segments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Segment
    # Add a new segment, based on specified RULE. Required Access Level: ModifyContacts
    # @param segment_payload [SegmentPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Segment]
    def segments_post(segment_payload, opts = {})
      data, _status_code, _headers = segments_post_with_http_info(segment_payload, opts)
      data
    end

    # Add Segment
    # Add a new segment, based on specified RULE. Required Access Level: ModifyContacts
    # @param segment_payload [SegmentPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Segment, Integer, Hash)>] Segment data, response status code and response headers
    def segments_post_with_http_info(segment_payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.segments_post ...'
      end
      # verify the required parameter 'segment_payload' is set
      if @api_client.config.client_side_validation && segment_payload.nil?
        fail ArgumentError, "Missing the required parameter 'segment_payload' when calling SegmentsApi.segments_post"
      end
      # resource path
      local_var_path = '/segments'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(segment_payload)

      # return_type
      return_type = opts[:debug_return_type] || 'Segment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.segments_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#segments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
