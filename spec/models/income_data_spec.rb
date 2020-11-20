=begin
#FriendlyScore Public API

#Public API for communication with FriendlyScore

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FriendlyscoreClient::IncomeData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IncomeData' do
  before do
    # run before each test
    @instance = FriendlyscoreClient::IncomeData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncomeData' do
    it 'should create an instance of IncomeData' do
      expect(@instance).to be_instance_of(FriendlyscoreClient::IncomeData)
    end
  end
  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "monthly_amounts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "categories"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
