=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory' do
  before do
    # run before each test
    @instance = CyberSource::Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory' do
    it 'should create an instance of Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory' do
      expect(@instance).to be_instance_of(CyberSource::Riskv1authenticationsRiskInformationBuyerHistoryAccountHistory)
    end
  end
  describe 'test attribute "first_use_of_shipping_address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipping_address_usage_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end