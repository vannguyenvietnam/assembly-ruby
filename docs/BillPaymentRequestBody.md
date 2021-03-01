# AssemblyRuby::BillPaymentRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | BPay Account to withdraw to. This needs to be a bpay_account id | [default to &#39;c1824ad0-73f1-0138-3700-0a58a9feac09&#39;]
**amount** | **Integer** | Amount (in cents) to withdraw. | 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BillPaymentRequestBody.new(account_id: c1824ad0-73f1-0138-3700-0a58a9feac09,
                                 amount: 173)
```


