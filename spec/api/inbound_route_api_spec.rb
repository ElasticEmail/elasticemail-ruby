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

# Unit tests for ElasticEmail::InboundRouteApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboundRouteApi' do
  before do
    # run before each test
    @api_instance = ElasticEmail::InboundRouteApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboundRouteApi' do
    it 'should create an instance of InboundRouteApi' do
      expect(@api_instance).to be_instance_of(ElasticEmail::InboundRouteApi)
    end
  end

  # unit tests for inboundroute_by_id_delete
  # Delete Route
  # Deletes the Inbound Route. Required Access Level: ModifySettings
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'inboundroute_by_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inboundroute_by_id_get
  # Get Route
  # Load an Inbound Route. Required Access Level: ViewSettings
  # @param id ID number of your attachment
  # @param [Hash] opts the optional parameters
  # @return [InboundRoute]
  describe 'inboundroute_by_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inboundroute_by_id_put
  # Update Route
  # Update the Inbound Route. Required Access Level: ModifySettings
  # @param id 
  # @param inbound_payload 
  # @param [Hash] opts the optional parameters
  # @return [InboundRoute]
  describe 'inboundroute_by_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inboundroute_get
  # Get Routes
  # Get all your Inbound Routes. Required Access Level: ViewSettings
  # @param [Hash] opts the optional parameters
  # @return [Array<InboundRoute>]
  describe 'inboundroute_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inboundroute_order_put
  # Update Sorting
  # Required Access Level: ViewSettings
  # @param sort_order_item Change the ordering of inbound routes for when matching the inbound
  # @param [Hash] opts the optional parameters
  # @return [Array<InboundRoute>]
  describe 'inboundroute_order_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inboundroute_post
  # Create Route
  # Create new Inbound Route. Required Access Level: ModifySettings
  # @param inbound_payload 
  # @param [Hash] opts the optional parameters
  # @return [InboundRoute]
  describe 'inboundroute_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
