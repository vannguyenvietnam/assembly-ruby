=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for AssemblyRuby::CardAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardAccountsApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::CardAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardAccountsApi' do
    it 'should create an instance of CardAccountsApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::CardAccountsApi)
    end
  end

  # unit tests for create_card_account
  # Create Card Account
  # Create a Credit **Card Account** to be used as a funding source. Store the returned &#x60;:id&#x60; and use it for a &#x60;make_payment&#x60; **Item Action** call. The &#x60;:id&#x60; is also referred to as a **token** when involving Credit Cards. 
  # @param card_account_request_body 
  # @param [Hash] opts the optional parameters
  # @return [CardAccount]
  describe 'create_card_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redact_card_account
  # Redact Card Account
  # Redact a Credit **Card Account** using a given &#x60;:id&#x60;. Redacted Credit **Card Accounts** can no longer be used as a funding source. 
  # @param id ID of the card account to be deleted
  # @param [Hash] opts the optional parameters
  # @return [CardAccountDeletion]
  describe 'redact_card_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_card_account
  # Show Card Account
  # Show details of a specific Credit **Card Account** using a given &#x60;:id&#x60;. You can toggle the card account number display to show the first 6 digits in addition to the last 4 digits. Contact Assembly if you want to toggle the card account display. 
  # @param id Card account ID
  # @param [Hash] opts the optional parameters
  # @return [CardAccount]
  describe 'show_card_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_card_account_user
  # Show Card Account User
  # Show the **User** the Credit **Card Account** is associated with using a given &#x60;:id&#x60;.
  # @param id Card account ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_card_account_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_card
  # Verify Card
  # Where pre-authorization is enabled on a platform, verifies a **Card Account** when a **Card Account** is successfully verified, its verification status is &#x60;verified&#x60;.
  # @param id Card account ID
  # @param [Hash] opts the optional parameters
  # @return [CardAccount]
  describe 'verify_card test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
