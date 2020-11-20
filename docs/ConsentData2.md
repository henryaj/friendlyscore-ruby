# FriendlyscoreClient::ConsentData2

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consent_id** | **String** | Unique identification as assigned to identify the account access consent resource. | 
**creation_date_time** | **DateTime** | Date and time at which the resource was created. All dates in the JSON payloads are represented in UNIX timestamp format. | 
**status** | **String** | Consent status, one of: Rejected, AwaitingAuthorisation, Authorised, Revoked. | 
**status_update_date_time** | **DateTime** | Date and time at which the resource status was updated. All dates in the JSON payloads are represented in UNIX timestamp format. | 
**expiration_date_time** | **DateTime** | Specified date and time the permissions will expire. If this is not populated, the permissions will be open ended. All dates in the JSON payloads are represented in UNIX timestamp format. | [optional] 
**transaction_from_date_time** | **DateTime** | Specified start date and time for the transaction query period. If this is not populated, the start date will be open ended, and data will be returned from the earliest available transaction. All dates in the JSON payloads are represented in UNIX timestamp format. | [optional] 
**transaction_to_date_time** | **DateTime** | Specified end date and time for the transaction query period. If this is not populated, the end date will be open ended, and data will be returned to the latest available transaction. All dates in the JSON payloads are represented in UNIX timestamp format. | [optional] 


