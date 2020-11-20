# FriendlyscoreClient::DataInputApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_customers_customer_id_account_collections_post**](DataInputApi.md#public_version_customers_customer_id_account_collections_post) | **POST** /public/{version}/customers/{customer_id}/account_collections | Post bank account collection for given customer.
[**public_version_customers_customer_id_balance_collections_post**](DataInputApi.md#public_version_customers_customer_id_balance_collections_post) | **POST** /public/{version}/customers/{customer_id}/balance_collections | Post bank balance collection for given customer and bank. This is an asynchronous endpoint.
[**public_version_customers_customer_id_transaction_collections_post**](DataInputApi.md#public_version_customers_customer_id_transaction_collections_post) | **POST** /public/{version}/customers/{customer_id}/transaction_collections | Post bank transaction collection for given customer and bank. This is an asynchronous endpoint.


# **public_version_customers_customer_id_account_collections_post**
> public_version_customers_customer_id_account_collections_post(customer_id, version, opts)

Post bank account collection for given customer.

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

api_instance = FriendlyscoreClient::DataInputApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 

opts = { 
  accounts_collection: FriendlyscoreClient::AccountInputCollection.new # AccountInputCollection | AccountInputCollection object
}

begin
  #Post bank account collection for given customer.
  api_instance.public_version_customers_customer_id_account_collections_post(customer_id, version, opts)
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling DataInputApi->public_version_customers_customer_id_account_collections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 
 **accounts_collection** | [**AccountInputCollection**](AccountInputCollection.md)| AccountInputCollection object | [optional] 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_balance_collections_post**
> DtnDataProcessingSummary public_version_customers_customer_id_balance_collections_post(customer_id, version, opts)

Post bank balance collection for given customer and bank. This is an asynchronous endpoint.

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

api_instance = FriendlyscoreClient::DataInputApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 

opts = { 
  balances_collection: FriendlyscoreClient::BalanceInputCollection.new # BalanceInputCollection | BalanceInputCollection object
}

begin
  #Post bank balance collection for given customer and bank. This is an asynchronous endpoint.
  result = api_instance.public_version_customers_customer_id_balance_collections_post(customer_id, version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling DataInputApi->public_version_customers_customer_id_balance_collections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 
 **balances_collection** | [**BalanceInputCollection**](BalanceInputCollection.md)| BalanceInputCollection object | [optional] 

### Return type

[**DtnDataProcessingSummary**](DtnDataProcessingSummary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_transaction_collections_post**
> DtnDataProcessingSummary public_version_customers_customer_id_transaction_collections_post(customer_id, version, opts)

Post bank transaction collection for given customer and bank. This is an asynchronous endpoint.

Transactions that have already been posted before will be skipped.

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

api_instance = FriendlyscoreClient::DataInputApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 

opts = { 
  transactions_collection: FriendlyscoreClient::TransactionInputCollection.new # TransactionInputCollection | TransactionInputCollection object
}

begin
  #Post bank transaction collection for given customer and bank. This is an asynchronous endpoint.
  result = api_instance.public_version_customers_customer_id_transaction_collections_post(customer_id, version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling DataInputApi->public_version_customers_customer_id_transaction_collections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 
 **transactions_collection** | [**TransactionInputCollection**](TransactionInputCollection.md)| TransactionInputCollection object | [optional] 

### Return type

[**DtnDataProcessingSummary**](DtnDataProcessingSummary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



