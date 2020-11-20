# FriendlyscoreClient::InvitationApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_invitations_get**](InvitationApi.md#public_version_invitations_get) | **GET** /public/{version}/invitations | Get invitations
[**public_version_invitations_id_revoke_patch**](InvitationApi.md#public_version_invitations_id_revoke_patch) | **PATCH** /public/{version}/invitations/{id}/revoke | Revoke an invitation
[**public_version_invitations_post**](InvitationApi.md#public_version_invitations_post) | **POST** /public/{version}/invitations | Post new invitation


# **public_version_invitations_get**
> CustomerInvitationCollection public_version_invitations_get(version, opts)

Get invitations

### Example
```ruby
# load the gem
require 'friendlyscore_ruby'
# setup authorization
FriendlyscoreClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = FriendlyscoreClient::InvitationApi.new

version = 'version_example' # String | 

opts = { 
  page: 56, # Integer | Page (default is 1)
  max_per_page: 56, # Integer | Max results per page (deafult is 1000)
  is_used: 56, # Integer | 0|1
  is_revoked: 56, # Integer | 0|1
  is_expired: 56, # Integer | 0|1
  customer_type: 'customer_type_example', # String | Business|Personal
  reference: 'reference_example' # String | Customer reference
}

begin
  #Get invitations
  result = api_instance.public_version_invitations_get(version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling InvitationApi->public_version_invitations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **page** | **Integer**| Page (default is 1) | [optional] 
 **max_per_page** | **Integer**| Max results per page (deafult is 1000) | [optional] 
 **is_used** | **Integer**| 0|1 | [optional] 
 **is_revoked** | **Integer**| 0|1 | [optional] 
 **is_expired** | **Integer**| 0|1 | [optional] 
 **customer_type** | **String**| Business|Personal | [optional] 
 **reference** | **String**| Customer reference | [optional] 

### Return type

[**CustomerInvitationCollection**](CustomerInvitationCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_invitations_id_revoke_patch**
> public_version_invitations_id_revoke_patch(id, version)

Revoke an invitation

### Example
```ruby
# load the gem
require 'friendlyscore_ruby'
# setup authorization
FriendlyscoreClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = FriendlyscoreClient::InvitationApi.new

id = 'id_example' # String | Invitation's ID

version = 'version_example' # String | 


begin
  #Revoke an invitation
  api_instance.public_version_invitations_id_revoke_patch(id, version)
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling InvitationApi->public_version_invitations_id_revoke_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invitation&#39;s ID | 
 **version** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_invitations_post**
> CustomerInvitation public_version_invitations_post(version, opts)

Post new invitation

### Example
```ruby
# load the gem
require 'friendlyscore_ruby'
# setup authorization
FriendlyscoreClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = FriendlyscoreClient::InvitationApi.new

version = 'version_example' # String | 

opts = { 
  body: FriendlyscoreClient::CustomerInvitationType.new # CustomerInvitationType | Init data
}

begin
  #Post new invitation
  result = api_instance.public_version_invitations_post(version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling InvitationApi->public_version_invitations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **body** | [**CustomerInvitationType**](CustomerInvitationType.md)| Init data | [optional] 

### Return type

[**CustomerInvitation**](CustomerInvitation.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



