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

# Unit tests for CyberSource::InlineResponse2012OrderInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2012OrderInformation' do
  before do
    # run before each test
    @instance = CyberSource::InlineResponse2012OrderInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2012OrderInformation' do
    it 'should create an instance of InlineResponse2012OrderInformation' do
      expect(@instance).to be_instance_of(CyberSource::InlineResponse2012OrderInformation)
    end
  end
  describe 'test attribute "amount_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
