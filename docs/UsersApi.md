# FriendlyscoreClient::UsersApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_customers_get**](UsersApi.md#public_version_customers_get) | **GET** /public/{version}/customers | Returns the list of users. Can be used for seeking users.
[**public_version_customers_post**](UsersApi.md#public_version_customers_post) | **POST** /public/{version}/customers | Creates a new \&quot;empty\&quot; user.


# **public_version_customers_get**
> UserCollection public_version_customers_get(version, opts)

Returns the list of users. Can be used for seeking users.

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

api_instance = FriendlyscoreClient::UsersApi.new

version = 'version_example' # String | 

opts = { 
  by_user_reference: 'by_user_reference_example' # String | Filter by user identifier from **your** database
}

begin
  #Returns the list of users. Can be used for seeking users.
  result = api_instance.public_version_customers_get(version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UsersApi->public_version_customers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **by_user_reference** | **String**| Filter by user identifier from **your** database | [optional] 

### Return type

[**UserCollection**](UserCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_post**
> User public_version_customers_post(version, opts)

Creates a new \"empty\" user.

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

api_instance = FriendlyscoreClient::UsersApi.new

version = 'version_example' # String | 

opts = { 
  user_data: FriendlyscoreClient::UserReferenceWithEntityType.new # UserReferenceWithEntityType | Data to insert
}

begin
  #Creates a new \"empty\" user.
  result = api_instance.public_version_customers_post(version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UsersApi->public_version_customers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **user_data** | [**UserReferenceWithEntityType**](UserReferenceWithEntityType.md)| Data to insert | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



