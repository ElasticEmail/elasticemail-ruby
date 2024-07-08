=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ElasticEmail::SplitOptimizationType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ElasticEmail::SplitOptimizationType do
  let(:instance) { ElasticEmail::SplitOptimizationType.new }

  describe 'test an instance of SplitOptimizationType' do
    it 'should create an instance of SplitOptimizationType' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ElasticEmail::SplitOptimizationType)
    end
  end

end
