=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::TokenizeRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TokenizeRequest' do
  before do
    # run before each test
    @instance = CyberSource::TokenizeRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TokenizeRequest' do
    it 'should create an instance of TokenizeRequest' do
      expect(@instance).to be_instance_of(CyberSource::TokenizeRequest)
    end
  end
  describe 'test attribute "key_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "card_info"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
