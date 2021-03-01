# AssemblyRuby::DisbursementLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactions** | **String** |  | [optional] 
**wallet_accounts** | **String** |  | [optional] 
**paypal_accounts** | **String** |  | [optional] 
**bank_accounts** | **String** |  | [optional] 
**bpay_accounts** | **String** |  | [optional] 
**items** | **String** |  | [optional] 
**users** | **String** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::DisbursementLinks.new(transactions: /disbursements/8a31ebfa-421b-4cbb-9241-632f71b3778a/transactions,
                                 wallet_accounts: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/wallet_accounts,
                                 paypal_accounts: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/paypal_accounts,
                                 bank_accounts: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/bank_accounts,
                                 bpay_accounts: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/bpay_accounts,
                                 items: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/items,
                                 users: /disbursements/ea36e48a-4638-4d1a-a345-e1a0a584df8b/users)
```


