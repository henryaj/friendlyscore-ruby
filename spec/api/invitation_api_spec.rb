=begin
#FriendlyScore Public API

#Public API for communication with FriendlyScore

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'

# Unit tests for FriendlyscoreClient::InvitationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InvitationApi' do
  before do
    # run before each test
    @instance = FriendlyscoreClient::InvitationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvitationApi' do
    it 'should create an instance of InvitationApi' do
      expect(@instance).to be_instance_of(FriendlyscoreClient::InvitationApi)
    end
  end

  # unit tests for public_version_invitations_get
  # Get invitations
  # @param version 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page (default is 1)
  # @option opts [Integer] :max_per_page Max results per page (deafult is 1000)
  # @option opts [Integer] :is_used 0|1
  # @option opts [Integer] :is_revoked 0|1
  # @option opts [Integer] :is_expired 0|1
  # @option opts [String] :customer_type Business|Personal
  # @option opts [String] :reference Customer reference
  # @return [CustomerInvitationCollection]
  describe 'public_version_invitations_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_version_invitations_id_revoke_patch
  # Revoke an invitation
  # @param id Invitation&#39;s ID
  # @param version 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'public_version_invitations_id_revoke_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_version_invitations_post
  # Post new invitation
  # @param version 
  # @param [Hash] opts the optional parameters
  # @option opts [CustomerInvitationType] :body Init data
  # @return [CustomerInvitation]
  describe 'public_version_invitations_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
