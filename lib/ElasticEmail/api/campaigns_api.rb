=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'cgi'

module ElasticEmail
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Campaign
    # Delete the specific campaign.  This does not cancel in progress email, see Cancel In Progress. Required Access Level: ModifyCampaigns
    # @param name [String] Name of Campaign to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def campaigns_by_name_delete(name, opts = {})
      campaigns_by_name_delete_with_http_info(name, opts)
      nil
    end

    # Delete Campaign
    # Delete the specific campaign.  This does not cancel in progress email, see Cancel In Progress. Required Access Level: ModifyCampaigns
    # @param name [String] Name of Campaign to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def campaigns_by_name_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns_by_name_delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.campaigns_by_name_delete"
      end
      # resource path
      local_var_path = '/campaigns/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"CampaignsApi.campaigns_by_name_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns_by_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Campaign
    # Returns the specified campaign details. Required Access Level: ViewCampaigns
    # @param name [String] Name of Campaign to get
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def campaigns_by_name_get(name, opts = {})
      data, _status_code, _headers = campaigns_by_name_get_with_http_info(name, opts)
      data
    end

    # Load Campaign
    # Returns the specified campaign details. Required Access Level: ViewCampaigns
    # @param name [String] Name of Campaign to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def campaigns_by_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns_by_name_get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.campaigns_by_name_get"
      end
      # resource path
      local_var_path = '/campaigns/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CampaignsApi.campaigns_by_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns_by_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Campaign
    # Updates a previously added campaign.  Only Active and Paused campaigns can be updated. Required Access Level: ModifyCampaigns
    # @param name [String] Name of Campaign to update
    # @param campaign [Campaign] JSON representation of a campaign
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def campaigns_by_name_put(name, campaign, opts = {})
      data, _status_code, _headers = campaigns_by_name_put_with_http_info(name, campaign, opts)
      data
    end

    # Update Campaign
    # Updates a previously added campaign.  Only Active and Paused campaigns can be updated. Required Access Level: ModifyCampaigns
    # @param name [String] Name of Campaign to update
    # @param campaign [Campaign] JSON representation of a campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def campaigns_by_name_put_with_http_info(name, campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns_by_name_put ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.campaigns_by_name_put"
      end
      # verify the required parameter 'campaign' is set
      if @api_client.config.client_side_validation && campaign.nil?
        fail ArgumentError, "Missing the required parameter 'campaign' when calling CampaignsApi.campaigns_by_name_put"
      end
      # resource path
      local_var_path = '/campaigns/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(campaign)

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CampaignsApi.campaigns_by_name_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns_by_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Load Campaigns
    # Returns a list all of your campaigns. Limited to 1000 results. Required Access Level: ViewCampaigns
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching in Campaign name (using the &#39;contains&#39; rule)
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @return [Array<Campaign>]
    def campaigns_get(opts = {})
      data, _status_code, _headers = campaigns_get_with_http_info(opts)
      data
    end

    # Load Campaigns
    # Returns a list all of your campaigns. Limited to 1000 results. Required Access Level: ViewCampaigns
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Text fragment used for searching in Campaign name (using the &#39;contains&#39; rule)
    # @option opts [Integer] :offset How many items should be returned ahead.
    # @option opts [Integer] :limit Maximum number of returned items.
    # @return [Array<(Array<Campaign>, Integer, Hash)>] Array<Campaign> data, response status code and response headers
    def campaigns_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns_get ...'
      end
      # resource path
      local_var_path = '/campaigns'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Campaign>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CampaignsApi.campaigns_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Campaign
    # Add a campaign for processing. Required Access Level: ModifyCampaigns
    # @param campaign [Campaign] JSON representation of a campaign
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def campaigns_post(campaign, opts = {})
      data, _status_code, _headers = campaigns_post_with_http_info(campaign, opts)
      data
    end

    # Add Campaign
    # Add a campaign for processing. Required Access Level: ModifyCampaigns
    # @param campaign [Campaign] JSON representation of a campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def campaigns_post_with_http_info(campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns_post ...'
      end
      # verify the required parameter 'campaign' is set
      if @api_client.config.client_side_validation && campaign.nil?
        fail ArgumentError, "Missing the required parameter 'campaign' when calling CampaignsApi.campaigns_post"
      end
      # resource path
      local_var_path = '/campaigns'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(campaign)

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CampaignsApi.campaigns_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
