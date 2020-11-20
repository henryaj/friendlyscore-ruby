# FriendlyscoreClient::UtilApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_version_customers_customer_id_data_processing_statuses_dtn_slug_get**](UtilApi.md#public_version_customers_customer_id_data_processing_statuses_dtn_slug_get) | **GET** /public/{version}/customers/{customer_id}/data_processing_statuses/{dtn_slug} | Get the current status of a certain data processing request.
[**public_version_customers_customer_id_data_processing_statuses_get**](UtilApi.md#public_version_customers_customer_id_data_processing_statuses_get) | **GET** /public/{version}/customers/{customer_id}/data_processing_statuses | Get the current status of a all data processing requests for current user.
[**public_version_customers_customer_id_report_readiness_statuses_get**](UtilApi.md#public_version_customers_customer_id_report_readiness_statuses_get) | **GET** /public/{version}/customers/{customer_id}/report_readiness_statuses | Get the current readiness status for all reports for current user.
[**public_version_customers_customer_id_report_readiness_statuses_report_name_get**](UtilApi.md#public_version_customers_customer_id_report_readiness_statuses_report_name_get) | **GET** /public/{version}/customers/{customer_id}/report_readiness_statuses/{report_name} | Get the current readiness status for a certain report.


# **public_version_customers_customer_id_data_processing_statuses_dtn_slug_get**
> DtnDataProcessingSummary public_version_customers_customer_id_data_processing_statuses_dtn_slug_get(customer_id, dtn_slug, version)

Get the current status of a certain data processing request.

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

api_instance = FriendlyscoreClient::UtilApi.new

customer_id = 'customer_id_example' # String | Customer ID

dtn_slug = 'dtn_slug_example' # String | Data Processing Request slug

version = 'version_example' # String | 


begin
  #Get the current status of a certain data processing request.
  result = api_instance.public_version_customers_customer_id_data_processing_statuses_dtn_slug_get(customer_id, dtn_slug, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UtilApi->public_version_customers_customer_id_data_processing_statuses_dtn_slug_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **dtn_slug** | **String**| Data Processing Request slug | 
 **version** | **String**|  | 

### Return type

[**DtnDataProcessingSummary**](DtnDataProcessingSummary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_data_processing_statuses_get**
> DtnDataProcessingSummaryCollection public_version_customers_customer_id_data_processing_statuses_get(customer_id, version)

Get the current status of a all data processing requests for current user.

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

api_instance = FriendlyscoreClient::UtilApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get the current status of a all data processing requests for current user.
  result = api_instance.public_version_customers_customer_id_data_processing_statuses_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UtilApi->public_version_customers_customer_id_data_processing_statuses_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**DtnDataProcessingSummaryCollection**](DtnDataProcessingSummaryCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_report_readiness_statuses_get**
> ReportReadinessStatusCollection public_version_customers_customer_id_report_readiness_statuses_get(customer_id, version)

Get the current readiness status for all reports for current user.

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

api_instance = FriendlyscoreClient::UtilApi.new

customer_id = 'customer_id_example' # String | Customer ID

version = 'version_example' # String | 


begin
  #Get the current readiness status for all reports for current user.
  result = api_instance.public_version_customers_customer_id_report_readiness_statuses_get(customer_id, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UtilApi->public_version_customers_customer_id_report_readiness_statuses_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **version** | **String**|  | 

### Return type

[**ReportReadinessStatusCollection**](ReportReadinessStatusCollection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **public_version_customers_customer_id_report_readiness_statuses_report_name_get**
> ReportReadinessStatus public_version_customers_customer_id_report_readiness_statuses_report_name_get(customer_id, report_name, version)

Get the current readiness status for a certain report.

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

api_instance = FriendlyscoreClient::UtilApi.new

customer_id = 'customer_id_example' # String | Customer ID

report_name = 'report_name_example' # String | Name of the report (e.g. `insights` or `forecast`)

version = 'version_example' # String | 


begin
  #Get the current readiness status for a certain report.
  result = api_instance.public_version_customers_customer_id_report_readiness_statuses_report_name_get(customer_id, report_name, version)
  p result
rescue FriendlyscoreClient::ApiError => e
  puts "Exception when calling UtilApi->public_version_customers_customer_id_report_readiness_statuses_report_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **report_name** | **String**| Name of the report (e.g. &#x60;insights&#x60; or &#x60;forecast&#x60;) | 
 **version** | **String**|  | 

### Return type

[**ReportReadinessStatus**](ReportReadinessStatus.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



