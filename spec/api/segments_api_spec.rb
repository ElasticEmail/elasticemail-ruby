=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    To start using this API, you will need your Access Token (available <a href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a href=\"https://api.elasticemail.com/public/help\">here</a>.

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for ElasticEmail::SegmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SegmentsApi' do
  before do
    # run before each test
    @api_instance = ElasticEmail::SegmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SegmentsApi' do
    it 'should create an instance of SegmentsApi' do
      expect(@api_instance).to be_instance_of(ElasticEmail::SegmentsApi)
    end
  end

  # unit tests for segments_by_name_delete
  # Delete Segment
  # Delete an existing segment. Required Access Level: ModifyContacts
  # @param name Name of your segment.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'segments_by_name_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for segments_by_name_get
  # Load Segment
  # Returns details for the specified segment. Required Access Level: ViewContacts
  # @param name Name of the segment you want to load. Will load all contacts if the &#39;All Contacts&#39; name has been provided
  # @param [Hash] opts the optional parameters
  # @return [Segment]
  describe 'segments_by_name_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for segments_by_name_put
  # Update Segment
  # Rename or change RULE for your segment. Required Access Level: ModifyContacts
  # @param name Name of your segment.
  # @param segment_payload 
  # @param [Hash] opts the optional parameters
  # @return [Segment]
  describe 'segments_by_name_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for segments_get
  # Load Segments
  # Returns a list of all your available Segments. Required Access Level: ViewContacts
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Maximum number of returned items.
  # @option opts [Integer] :offset How many items should be returned ahead.
  # @return [Array<Segment>]
  describe 'segments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for segments_post
  # Add Segment
  # Add a new segment, based on specified RULE. Required Access Level: ModifyContacts
  # @param segment_payload 
  # @param [Hash] opts the optional parameters
  # @return [Segment]
  describe 'segments_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
