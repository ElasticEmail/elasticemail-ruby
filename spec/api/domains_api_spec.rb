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

# Unit tests for ElasticEmail::DomainsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DomainsApi' do
  before do
    # run before each test
    @api_instance = ElasticEmail::DomainsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainsApi' do
    it 'should create an instance of DomainsApi' do
      expect(@api_instance).to be_instance_of(ElasticEmail::DomainsApi)
    end
  end

  # unit tests for domains_by_domain_delete
  # Delete Domain
  # Deletes configured domain from Account. Required Access Level: ModifySettings
  # @param domain Name of the given domain
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'domains_by_domain_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_by_domain_get
  # Load Domain
  # Retrieve a domain configured for this Account. Required Access Level: ViewSettings
  # @param domain Name of the given domain
  # @param [Hash] opts the optional parameters
  # @return [DomainData]
  describe 'domains_by_domain_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_by_domain_put
  # Update Domain
  # Updates the specified domain. Required Access Level: ModifySettings
  # @param domain Name of the given domain
  # @param domain_update_payload Updated Domain resource
  # @param [Hash] opts the optional parameters
  # @return [DomainDetail]
  describe 'domains_by_domain_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_by_domain_restricted_get
  # Check for domain restriction
  # Checking if domain is from free provider, or restricted. Required Access Level: ViewSettings
  # @param domain Name of the given domain
  # @param [Hash] opts the optional parameters
  # @return [Boolean]
  describe 'domains_by_domain_restricted_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_by_domain_verification_put
  # Verify Domain
  # Verifies that required DNS records exist for specified domain. Required Access Level: ModifySettings
  # @param domain Name of the given domain
  # @param body Tracking type used in the Tracking verification
  # @param [Hash] opts the optional parameters
  # @return [DomainData]
  describe 'domains_by_domain_verification_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_by_email_default_patch
  # Set Default
  # Sets a verified email address as default sender. Required Access Level: ModifySettings
  # @param email Default email sender, example: mail@yourdomain.com
  # @param [Hash] opts the optional parameters
  # @return [DomainDetail]
  describe 'domains_by_email_default_patch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_get
  # Load Domains
  # Returns a list of all domains configured for this Account. Required Access Level: ViewSettings
  # @param [Hash] opts the optional parameters
  # @return [Array<DomainDetail>]
  describe 'domains_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for domains_post
  # Add Domain
  # Add new domain to Account. Required Access Level: ModifySettings
  # @param domain_payload Domain to add
  # @param [Hash] opts the optional parameters
  # @return [DomainDetail]
  describe 'domains_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
