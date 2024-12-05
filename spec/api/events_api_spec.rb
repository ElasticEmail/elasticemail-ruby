=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for ElasticEmail::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @api_instance = ElasticEmail::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@api_instance).to be_instance_of(ElasticEmail::EventsApi)
    end
  end

  # unit tests for events_by_transactionid_get
  # Load Email Events
  # Returns a log of delivery events for the specific transaction ID. Required Access Level: ViewReports
  # @param transactionid ID number of transaction
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [EventsOrderBy] :order_by 
  # @option opts [Integer] :limit Maximum number of returned items.
  # @option opts [Integer] :offset How many items should be returned ahead.
  # @return [Array<RecipientEvent>]
  describe 'events_by_transactionid_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_channels_by_name_export_post
  # Export Channel Events
  # Export delivery events log information to the specified file format. Required Access Level: Export
  # @param name Name of selected channel.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<EventType>] :event_types Types of Events to return
  # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [ExportFileFormats] :file_format Format of the exported file
  # @option opts [CompressionFormat] :compression_format FileResponse compression format. None or Zip.
  # @option opts [String] :file_name Name of your file including extension.
  # @return [ExportLink]
  describe 'events_channels_by_name_export_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_channels_by_name_get
  # Load Channel Events
  # Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports
  # @param name Name of selected channel.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<EventType>] :event_types Types of Events to return
  # @option opts [Time] :from Starting date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [Time] :to Ending date for search in YYYY-MM-DDThh:mm:ss format.
  # @option opts [EventsOrderBy] :order_by 
  # @option opts [Integer] :limit How many items to load. Maximum for this request is 1000 items
  # @option opts [Integer] :offset How many items should be returned ahead.
  # @return [Array<RecipientEvent>]
  describe 'events_channels_by_name_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_channels_export_by_id_status_get
  # Check Channel Export Status
  # Check the current status of the channel export. Required Access Level: Export
  # @param id ID of the exported file
  # @param [Hash] opts the optional parameters
  # @return [ExportStatus]
  describe 'events_channels_export_by_id_status_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_export_by_id_status_get
  # Check Export Status
  # Check the current status of the export. Required Access Level: Export
  # @param id ID of the exported file
  # @param [Hash] opts the optional parameters
  # @return [ExportStatus]
  describe 'events_export_by_id_status_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_export_post
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
  describe 'events_export_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for events_get
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
  describe 'events_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
