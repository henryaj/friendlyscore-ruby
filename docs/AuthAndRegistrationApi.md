# FriendlyscoreClient::AuthAndRegistrationApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oauth_v2_token_post**](AuthAndRegistrationApi.md#oauth_v2_token_post) | **POST** /oauth/v2/token | Returns OAuth 2.0 token


# **oauth_v2_token_post**
> Token oauth_v2_token_post(opts)

Returns OAuth 2.0 token

### Example
```ruby
# load the gem
require 'friendlyscore_ruby'

api_instance = FriendlyscoreClient::AuthAndRegistrationApi.new

opts = { 
  oauth_token_request: FriendlyscoreClient::OAuthTokenRequestType.new # OAuthTokenRequestType | OAuth token request data
}

begin
  #Returns OAuth 2.0 token
  result = api_instance.oauth_v2_token_post(opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling AuthAndRegistrationApi->oauth_v2_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oauth_token_request** | [**OAuthTokenRequestType**](OAuthTokenRequestType.md)| OAuth token request data | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



