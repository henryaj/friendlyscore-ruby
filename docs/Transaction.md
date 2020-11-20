# FriendlyscoreClient::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_transaction_id** | **String** | Transaction ID from the original data source. Must be unique for associated user and account. | 
**name** | **String** | Transaction name or description | [optional] 
**type** | **String** | Transaction type, if available | [optional] 
**amount** | **Float** | Amount of associated currency (positive for income and negative for expenditure) | 
**balance** | [**BaseBalance**](BaseBalance.md) |  | [optional] 
**currency** | **String** | Currency code (compatible with ISO 4217) | 
**status** | **String** | Transaction status (compatible with OpenBanking 3.1 specification) | 
**bank_slug** | **String** | Slug of the associated bank | 
**account_number** | **String** | Number of the associated account | 
**category** | **String** | Category of the transaction | [optional] 
**address_line** | **String** | Address line | [optional] 
**value_date_time** | **DateTime** | Value date/time | [optional] 
**booking_date_time** | **DateTime** | Booking date/time | 
**custom_data** | **Object** | Optional additional raw data (custom object). | [optional] 


