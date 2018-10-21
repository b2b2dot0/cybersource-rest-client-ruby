=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::TokenizationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TokenizationApi' do
  before do
    # run before each test
    @instance = CyberSource::TokenizationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TokenizationApi' do
    it 'should create an instance of TokenizationApi' do
      expect(@instance).to be_instance_of(CyberSource::TokenizationApi)
    end
  end

  # unit tests for tokenize
  # Tokenize card
  # Returns a token representing the supplied card details. The token replaces card data and can be used as the Subscription ID in the CyberSource Simple Order API or SCMP API. This is an unauthenticated call that you should initiate from your customer’s device or browser.
  # @param [Hash] opts the optional parameters
  # @option opts [TokenizeRequest] :tokenize_request 
  # @return [InlineResponse2001]
  describe 'tokenize test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
