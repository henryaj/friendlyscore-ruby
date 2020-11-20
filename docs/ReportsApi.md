# FriendlyscoreClient::ReportsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_customers_customer_id_forecasts_forecast_id_get**](ReportsApi.md#public_version_customers_customer_id_forecasts_forecast_id_get) | **GET** /public/{version}/customers/{customer_id}/forecasts/{forecast_id} | Get the the forecasts for customer
[**public_version_customers_customer_id_insights_current_business_get**](ReportsApi.md#public_version_customers_customer_id_insights_current_business_get) | **GET** /public/{version}/customers/{customer_id}/insights/current_business | Get the insights for customer&#39;s business accounts
[**public_version_customers_customer_id_insights_current_personal_get**](ReportsApi.md#public_version_customers_customer_id_insights_current_personal_get) | **GET** /public/{version}/customers/{customer_id}/insights/current_personal | Get the insights for customer&#39;s personal accounts


# **public_version_customers_customer_id_forecasts_forecast_id_get**
> Forecast public_version_customers_customer_id_forecasts_forecast_id_get(customer_id, forecast_id, version)

Get the the forecasts for customer

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

api_instance = FriendlyscoreClient::ReportsApi.new

customer_id = 'customer_id_example' # String | Customer ID

forecast_id = 'forecast_id_example' # String | ID of the forecast. Should be `current_personal` or `current_business`. `current` is now deprecated (works as `current_personal`).

version = 'version_example' # String | 


begin
  #Get the the forecasts for customer
  result = api_instance.public_version_customers_customer_id_forecasts_forecast_id_get(customer_id, forecast_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling ReportsApi->public_version_customers_customer_id_forecasts_forecast_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **forecast_id** | **String**| ID of the forecast. Should be &#x60;current_personal&#x60; or &#x60;current_business&#x60;. &#x60;current&#x60; is now deprecated (works as &#x60;current_personal&#x60;). | 
 **version** | **String**|  | 

### Return type

[**Forecast**](Forecast.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_insights_current_business_get**
> BusinessInsights public_version_customers_customer_id_insights_current_business_get(customer_id, version)

Get the insights for customer's business accounts

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

api_instance = FriendlyscoreClient::ReportsApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get the insights for customer's business accounts
  result = api_instance.public_version_customers_customer_id_insights_current_business_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling ReportsApi->public_version_customers_customer_id_insights_current_business_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**BusinessInsights**](BusinessInsights.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_insights_current_personal_get**
> Insights public_version_customers_customer_id_insights_current_personal_get(customer_id, version)

Get the insights for customer's personal accounts

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

api_instance = FriendlyscoreClient::ReportsApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get the insights for customer's personal accounts
  result = api_instance.public_version_customers_customer_id_insights_current_personal_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling ReportsApi->public_version_customers_customer_id_insights_current_personal_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**Insights**](Insights.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



