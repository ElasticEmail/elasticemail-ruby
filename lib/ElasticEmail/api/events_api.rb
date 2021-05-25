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
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Load Email Events
    # Returns a log of delivery events for the specific transaction ID. Required Access Level: ViewReports
    # @param transactionid [String] ID number of transaction
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<RecipientEvent>]
    def events_by_transactionid_get(transactionid, opts = {})
      data, _status_code, _headers = events_by_transactionid_get_with_http_info(transactionid, opts)
      data
    end

    # Load Email Events
    # Returns a log of delivery events for the specific transaction ID. Required Access Level: ViewReports
    # @param transactionid [String] ID number of transaction
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<RecipientEvent>, Integer, Hash)>] Array<RecipientEvent> data, response status code and response headers
    def events_by_transactionid_get_with_http_info(transactionid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_by_transactionid_get ...'
      end
      # verify the required parameter 'transactionid' is set
      if @api_client.config.client_side_validation && transactionid.nil?
        fail ArgumentError, "Missing the required parameter 'transactionid' when calling EventsApi.events_by_transactionid_get"
      end
      # resource path
      local_var_path = '/events/{transactionid}'.sub('{' + 'transactionid' + '}', CGI.escape(transactionid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RecipientEvent>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EventsApi.events_by_transactionid_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_by_transactionid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export Channel Events
    # Export delivery events log information to the specified file format. Required Access Level: Export
    # @param name [String] Name of selected channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [ExportLink]
    def events_channels_by_name_export_post(name, opts = {})
      data, _status_code, _headers = events_channels_by_name_export_post_with_http_info(name, opts)
      data
    end

    # Export Channel Events
    # Export delivery events log information to the specified file format. Required Access Level: Export
    # @param name [String] Name of selected channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [Array<(ExportLink, Integer, Hash)>] ExportLink data, response status code and response headers
    def events_channels_by_name_export_post_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_channels_by_name_export_post ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling EventsApi.events_channels_by_name_export_post"
      end
      # resource path
      local_var_path = '/events/channels/{name}/export'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'eventTypes'] = @api_client.build_collection_param(opts[:'event_types'], :multi) if !opts[:'event_types'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'fileFormat'] = opts[:'file_format'] if !opts[:'file_format'].nil?
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
        :operation => :"EventsApi.events_channels_by_name_export_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_channels_by_name_export_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Channel Events
    # Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports
    # @param name [String] Name of selected channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit How many items to load. Maximum for this request is 1000 items
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<RecipientEvent>]
    def events_channels_by_name_get(name, opts = {})
      data, _status_code, _headers = events_channels_by_name_get_with_http_info(name, opts)
      data
    end

    # Load Channel Events
    # Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports
    # @param name [String] Name of selected channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit How many items to load. Maximum for this request is 1000 items
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<RecipientEvent>, Integer, Hash)>] Array<RecipientEvent> data, response status code and response headers
    def events_channels_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_channels_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling EventsApi.events_channels_by_name_get"
      end
      # resource path
      local_var_path = '/events/channels/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'eventTypes'] = @api_client.build_collection_param(opts[:'event_types'], :multi) if !opts[:'event_types'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RecipientEvent>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EventsApi.events_channels_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_channels_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check Channel Export Status
    # Check the current status of the channel export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [ExportStatus]
    def events_channels_export_by_id_status_get(id, opts = {})
      data, _status_code, _headers = events_channels_export_by_id_status_get_with_http_info(id, opts)
      data
    end

    # Check Channel Export Status
    # Check the current status of the channel export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportStatus, Integer, Hash)>] ExportStatus data, response status code and response headers
    def events_channels_export_by_id_status_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_channels_export_by_id_status_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EventsApi.events_channels_export_by_id_status_get"
      end
      # resource path
      local_var_path = '/events/channels/export/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"EventsApi.events_channels_export_by_id_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_channels_export_by_id_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check Export Status
    # Check the current status of the export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [ExportStatus]
    def events_export_by_id_status_get(id, opts = {})
      data, _status_code, _headers = events_export_by_id_status_get_with_http_info(id, opts)
      data
    end

    # Check Export Status
    # Check the current status of the export. Required Access Level: Export
    # @param id [String] ID of the exported file
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportStatus, Integer, Hash)>] ExportStatus data, response status code and response headers
    def events_export_by_id_status_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_export_by_id_status_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EventsApi.events_export_by_id_status_get"
      end
      # resource path
      local_var_path = '/events/export/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"EventsApi.events_export_by_id_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_export_by_id_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export Events
    # Export delivery events log information to the specified file format. Required Access Level: Export
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [ExportLink]
    def events_export_post(opts = {})
      data, _status_code, _headers = events_export_post_with_http_info(opts)
      data
    end

    # Export Events
    # Export delivery events log information to the specified file format. Required Access Level: Export
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [ExportFileFormats] :file_format Format of the exported file
    # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
    # @option opts [String] :file_name Name of your file including extension.
    # @return [Array<(ExportLink, Integer, Hash)>] ExportLink data, response status code and response headers
    def events_export_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_export_post ...'
      end
      # resource path
      local_var_path = '/events/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'eventTypes'] = @api_client.build_collection_param(opts[:'event_types'], :multi) if !opts[:'event_types'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'fileFormat'] = opts[:'file_format'] if !opts[:'file_format'].nil?
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
        :operation => :"EventsApi.events_export_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_export_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Events
    # Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit How many items to load. Maximum for this request is 1000 items
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<RecipientEvent>]
    def events_get(opts = {})
      data, _status_code, _headers = events_get_with_http_info(opts)
      data
    end

    # Load Events
    # Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports
    # @param [Hash] opts the optional parameters
    # @option opts [Array<EventType>] :event_types Types of Events to return
    # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @option opts [EventsOrderBy] :order_by 
    # @option opts [Integer] :limit How many items to load. Maximum for this request is 1000 items
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<RecipientEvent>, Integer, Hash)>] Array<RecipientEvent> data, response status code and response headers
    def events_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.events_get ...'
      end
      # resource path
      local_var_path = '/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'eventTypes'] = @api_client.build_collection_param(opts[:'event_types'], :multi) if !opts[:'event_types'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RecipientEvent>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"EventsApi.events_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
