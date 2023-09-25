# -*- encoding: utf-8 -*-

=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "ElasticEmail/version"

Gem::Specification.new do |s|
  s.name        = "ElasticEmail"
  s.version     = ElasticEmail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ElasticEmail"]
  s.email       = ["contact@elasticemail.com"]
  s.homepage    = "https://elasticemail.com"
  s.summary     = "Elastic Email REST API Ruby Gem"
  s.description = "The C# library for the Elastic Email REST API. This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach. To start using this API, you will need your Access Token. Remember to keep it safe."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
