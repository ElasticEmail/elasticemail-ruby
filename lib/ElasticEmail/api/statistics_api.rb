=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a target=\"_blank\" href=\"https://api.elasticemail.com/public/help\">here</a>.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module ElasticEmail
  class StatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Load Campaign Stats
    # Retrieve stats of an existing campaign. Required Access Level: ViewChannels
    # @param name [String] The name of the campaign to get.
    # @param [Hash] opts the optional parameters
    # @return [ChannelLogStatusSummary]
    def statistics_campaigns_by_name_get(name, opts = {})
      data, _status_code, _headers = statistics_campaigns_by_name_get_with_http_info(name, opts)
      data
    end

    # Load Campaign Stats
    # Retrieve stats of an existing campaign. Required Access Level: ViewChannels
    # @param name [String] The name of the campaign to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelLogStatusSummary, Integer, Hash)>] ChannelLogStatusSummary data, response status code and response headers
    def statistics_campaigns_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_campaigns_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling StatisticsApi.statistics_campaigns_by_name_get"
      end
      # resource path
      local_var_path = '/statistics/campaigns/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'ChannelLogStatusSummary'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"StatisticsApi.statistics_campaigns_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_campaigns_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Campaigns Stats
    # Returns a list of your Campaigns' stats. Required Access Level: ViewChannels
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<ChannelLogStatusSummary>]
    def statistics_campaigns_get(opts = {})
      data, _status_code, _headers = statistics_campaigns_get_with_http_info(opts)
      data
    end

    # Load Campaigns Stats
    # Returns a list of your Campaigns&#39; stats. Required Access Level: ViewChannels
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<ChannelLogStatusSummary>, Integer, Hash)>] Array<ChannelLogStatusSummary> data, response status code and response headers
    def statistics_campaigns_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_campaigns_get ...'
      end
      # resource path
      local_var_path = '/statistics/campaigns'

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
      return_type = opts[:debug_return_type] || 'Array<ChannelLogStatusSummary>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"StatisticsApi.statistics_campaigns_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_campaigns_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Channel Stats
    # Retrieve an existing channel stats. Required Access Level: ViewChannels
    # @param name [String] The name of the channel to get.
    # @param [Hash] opts the optional parameters
    # @return [ChannelLogStatusSummary]
    def statistics_channels_by_name_get(name, opts = {})
      data, _status_code, _headers = statistics_channels_by_name_get_with_http_info(name, opts)
      data
    end

    # Load Channel Stats
    # Retrieve an existing channel stats. Required Access Level: ViewChannels
    # @param name [String] The name of the channel to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelLogStatusSummary, Integer, Hash)>] ChannelLogStatusSummary data, response status code and response headers
    def statistics_channels_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_channels_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling StatisticsApi.statistics_channels_by_name_get"
      end
      # resource path
      local_var_path = '/statistics/channels/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'ChannelLogStatusSummary'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"StatisticsApi.statistics_channels_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_channels_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Channels Stats
    # Returns a list of your Channels' stats. Required Access Level: ViewChannels
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<ChannelLogStatusSummary>]
    def statistics_channels_get(opts = {})
      data, _status_code, _headers = statistics_channels_get_with_http_info(opts)
      data
    end

    # Load Channels Stats
    # Returns a list of your Channels&#39; stats. Required Access Level: ViewChannels
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of returned items.
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @return [Array<(Array<ChannelLogStatusSummary>, Integer, Hash)>] Array<ChannelLogStatusSummary> data, response status code and response headers
    def statistics_channels_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_channels_get ...'
      end
      # resource path
      local_var_path = '/statistics/channels'

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
      return_type = opts[:debug_return_type] || 'Array<ChannelLogStatusSummary>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"StatisticsApi.statistics_channels_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_channels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Statistics
    # Returns basic statistics. Required Access Level: ViewReports
    # @param from [Time] Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @return [LogStatusSummary]
    def statistics_get(from, opts = {})
      data, _status_code, _headers = statistics_get_with_http_info(from, opts)
      data
    end

    # Load Statistics
    # Returns basic statistics. Required Access Level: ViewReports
    # @param from [Time] Starting date for search in YYYY-MM-DDThh:mm:ss format.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
    # @return [Array<(LogStatusSummary, Integer, Hash)>] LogStatusSummary data, response status code and response headers
    def statistics_get_with_http_info(from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_get ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling StatisticsApi.statistics_get"
      end
      # resource path
      local_var_path = '/statistics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LogStatusSummary'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"StatisticsApi.statistics_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
