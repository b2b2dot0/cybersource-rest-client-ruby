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

# Unit tests for CyberSource::V2paymentsidcapturesPointOfSaleInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V2paymentsidcapturesPointOfSaleInformation' do
  before do
    # run before each test
    @instance = CyberSource::V2paymentsidcapturesPointOfSaleInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V2paymentsidcapturesPointOfSaleInformation' do
    it 'should create an instance of V2paymentsidcapturesPointOfSaleInformation' do
      expect(@instance).to be_instance_of(CyberSource::V2paymentsidcapturesPointOfSaleInformation)
    end
  end
  describe 'test attribute "emv"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amex_capn_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
