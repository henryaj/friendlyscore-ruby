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

# Unit tests for FriendlyscoreClient::TransactionsCategoryPatchElement
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionsCategoryPatchElement' do
  before do
    # run before each test
    @instance = FriendlyscoreClient::TransactionsCategoryPatchElement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsCategoryPatchElement' do
    it 'should create an instance of TransactionsCategoryPatchElement' do
      expect(@instance).to be_instance_of(FriendlyscoreClient::TransactionsCategoryPatchElement)
    end
  end
  describe 'test attribute "category_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
