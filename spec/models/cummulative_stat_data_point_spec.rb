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

# Unit tests for FriendlyscoreClient::CummulativeStatDataPoint
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CummulativeStatDataPoint' do
  before do
    # run before each test
    @instance = FriendlyscoreClient::CummulativeStatDataPoint.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CummulativeStatDataPoint' do
    it 'should create an instance of CummulativeStatDataPoint' do
      expect(@instance).to be_instance_of(FriendlyscoreClient::CummulativeStatDataPoint)
    end
  end
  describe 'test attribute "timestamp_from"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "timestamp_to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
