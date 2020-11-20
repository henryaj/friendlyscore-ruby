# FriendlyscoreClient::BankingDataApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_account_types_account_type_transaction_categories_get**](BankingDataApi.md#public_version_account_types_account_type_transaction_categories_get) | **GET** /public/{version}/account_types/{account_type}/transaction_categories | Get the available transaction categories
[**public_version_banks_get**](BankingDataApi.md#public_version_banks_get) | **GET** /public/{version}/banks | Get available banks.
[**public_version_customers_customer_id_accounts_get**](BankingDataApi.md#public_version_customers_customer_id_accounts_get) | **GET** /public/{version}/customers/{customer_id}/accounts | Get bank account list for a given customer.
[**public_version_customers_customer_id_balances_get**](BankingDataApi.md#public_version_customers_customer_id_balances_get) | **GET** /public/{version}/customers/{customer_id}/balances | Get bank balance list for a given customer.
[**public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get**](BankingDataApi.md#public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get) | **GET** /public/{version}/customers/{customer_id}/bank/{bank_slug}/consent/{consent_type} | Get the current user consent for given bank
[**public_version_customers_customer_id_banks_get**](BankingDataApi.md#public_version_customers_customer_id_banks_get) | **GET** /public/{version}/customers/{customer_id}/banks | Get customer&#39;s connected banks with embedded consent objects.
[**public_version_customers_customer_id_transaction_categorisation_account_type_patch**](BankingDataApi.md#public_version_customers_customer_id_transaction_categorisation_account_type_patch) | **PATCH** /public/{version}/customers/{customer_id}/transaction_categorisation/{account_type} | Update given set of transactions with a new category.
[**public_version_customers_customer_id_transactions_get**](BankingDataApi.md#public_version_customers_customer_id_transactions_get) | **GET** /public/{version}/customers/{customer_id}/transactions | Get bank transaction list for a given customer.


# **public_version_account_types_account_type_transaction_categories_get**
> Array&lt;CategoryMetadata&gt; public_version_account_types_account_type_transaction_categories_get(account_type, version)

Get the available transaction categories

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

api_instance = FriendlyscoreClient::BankingDataApi.new

account_type = 'account_type_example' # String | Account type: `Personal` or `Business`

version = 'version_example' # String | 


begin
  #Get the available transaction categories
  result = api_instance.public_version_account_types_account_type_transaction_categories_get(account_type, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_account_types_account_type_transaction_categories_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_type** | **String**| Account type: &#x60;Personal&#x60; or &#x60;Business&#x60; | 
 **version** | **String**|  | 

### Return type

[**Array&lt;CategoryMetadata&gt;**](CategoryMetadata.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_banks_get**
> BankCollection public_version_banks_get(version)

Get available banks.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

version = 'version_example' # String | 


begin
  #Get available banks.
  result = api_instance.public_version_banks_get(version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_banks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 

### Return type

[**BankCollection**](BankCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_accounts_get**
> AccountCollection public_version_customers_customer_id_accounts_get(customer_id, version)

Get bank account list for a given customer.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get bank account list for a given customer.
  result = api_instance.public_version_customers_customer_id_accounts_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_accounts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**AccountCollection**](AccountCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_balances_get**
> BalanceCollection public_version_customers_customer_id_balances_get(customer_id, version)

Get bank balance list for a given customer.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get bank balance list for a given customer.
  result = api_instance.public_version_customers_customer_id_balances_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**BalanceCollection**](BalanceCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get**
> ConsentData public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get(customer_id, consent_type, bank_slug, version)

Get the current user consent for given bank

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

consent_type = 'consent_type_example' # String | Identifier of the consent type. Currently only `'account'` is used.

bank_slug = 'bank_slug_example' # String | Identifier of the bank. Bank slug

version = 'version_example' # String | 


begin
  #Get the current user consent for given bank
  result = api_instance.public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get(customer_id, consent_type, bank_slug, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_bank_bank_slug_consent_consent_type_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **consent_type** | **String**| Identifier of the consent type. Currently only &#x60;&#39;account&#39;&#x60; is used. | 
 **bank_slug** | **String**| Identifier of the bank. Bank slug | 
 **version** | **String**|  | 

### Return type

[**ConsentData**](ConsentData.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_banks_get**
> BankWithConsentsCollection public_version_customers_customer_id_banks_get(customer_id, version)

Get customer's connected banks with embedded consent objects.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get customer's connected banks with embedded consent objects.
  result = api_instance.public_version_customers_customer_id_banks_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_banks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**BankWithConsentsCollection**](BankWithConsentsCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_transaction_categorisation_account_type_patch**
> public_version_customers_customer_id_transaction_categorisation_account_type_patch(customer_id, account_type, version, opts)

Update given set of transactions with a new category.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

account_type = 'account_type_example' # String | Account type: `Personal` or `Business`

version = 'version_example' # String | 

opts = { 
  category_patch: FriendlyscoreClient::TransactionsCategoryPatch.new # TransactionsCategoryPatch | Object describing which transactions should be patched and what category should be set.
}

begin
  #Update given set of transactions with a new category.
  api_instance.public_version_customers_customer_id_transaction_categorisation_account_type_patch(customer_id, account_type, version, opts)
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_transaction_categorisation_account_type_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **account_type** | **String**| Account type: &#x60;Personal&#x60; or &#x60;Business&#x60; | 
 **version** | **String**|  | 
 **category_patch** | [**TransactionsCategoryPatch**](TransactionsCategoryPatch.md)| Object describing which transactions should be patched and what category should be set. | [optional] 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_transactions_get**
> TransactionCollection public_version_customers_customer_id_transactions_get(customer_id, version, opts)

Get bank transaction list for a given customer.

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

api_instance = FriendlyscoreClient::BankingDataApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 

opts = { 
  page: 56, # Integer | Page number (1 by default)
  max_per_page: 56, # Integer | Item count on one page (1000 by default)
  category_id: 'category_id_example', # String | Category ID to filter by
  account_number: 'account_number_example', # String | Account number to filter by
  account_type: 'account_type_example', # String | OpenBanking Account type (`'Personal'` or `'Business'`)
  bank_slug: 'bank_slug_example', # String | Bank slug to filter by
  booking_date_time_from: 56, # Integer | Min value (inclusive) for booking date time filter (UNIX timestamp in seconds)
  booking_date_time_to: 56, # Integer | Max value (inclusive) for booking date time filter (UNIX timestamp in seconds)
  currency: 'currency_example' # String | Currency to filter by (ISO 4217 format)
}

begin
  #Get bank transaction list for a given customer.
  result = api_instance.public_version_customers_customer_id_transactions_get(customer_id, version, opts)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling BankingDataApi->public_version_customers_customer_id_transactions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 
 **page** | **Integer**| Page number (1 by default) | [optional] 
 **max_per_page** | **Integer**| Item count on one page (1000 by default) | [optional] 
 **category_id** | **String**| Category ID to filter by | [optional] 
 **account_number** | **String**| Account number to filter by | [optional] 
 **account_type** | **String**| OpenBanking Account type (&#x60;&#39;Personal&#39;&#x60; or &#x60;&#39;Business&#39;&#x60;) | [optional] 
 **bank_slug** | **String**| Bank slug to filter by | [optional] 
 **booking_date_time_from** | **Integer**| Min value (inclusive) for booking date time filter (UNIX timestamp in seconds) | [optional] 
 **booking_date_time_to** | **Integer**| Max value (inclusive) for booking date time filter (UNIX timestamp in seconds) | [optional] 
 **currency** | **String**| Currency to filter by (ISO 4217 format) | [optional] 

### Return type

[**TransactionCollection**](TransactionCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



