=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AssemblyRuby::TokenAuthRequestBody
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe AssemblyRuby::TokenAuthRequestBody do
  let(:instance) { AssemblyRuby::TokenAuthRequestBody.new }

  describe 'test an instance of TokenAuthRequestBody' do
    it 'should create an instance of TokenAuthRequestBody' do
      expect(instance).to be_instance_of(AssemblyRuby::TokenAuthRequestBody)
    end
  end
  describe 'test attribute "token_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bank", "card"])
      # validator.allowable_values.each do |value|
      #   expect { instance.token_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
