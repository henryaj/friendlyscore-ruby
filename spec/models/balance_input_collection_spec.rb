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

# Unit tests for FriendlyscoreClient::BalanceInputCollection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BalanceInputCollection' do
  before do
    # run before each test
    @instance = FriendlyscoreClient::BalanceInputCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BalanceInputCollection' do
    it 'should create an instance of BalanceInputCollection' do
      expect(@instance).to be_instance_of(FriendlyscoreClient::BalanceInputCollection)
    end
  end
  describe 'test attribute "balances"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
