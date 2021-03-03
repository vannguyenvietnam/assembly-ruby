# AssemblyRuby::TransactionPayeeDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **debtor_name** | **String** |  | [optional] |
| **debtor_legal_name** | **String** |  | [optional] |
| **debtor_bsb** | **String** |  | [optional] |
| **debtor_account** | **String** |  | [optional] |
| **clearing_system_transaction_id** | **String** |  | [optional] |
| **remittance_information** | **String** |  | [optional] |
| **pay_id** | **String** |  | [optional] |
| **pay_id_type** | **String** |  | [optional] |
| **end_to_end_id** | **String** |  | [optional] |
| **npp_payin_internal_id** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::TransactionPayeeDetails.new(
  debtor_name: Test debtor name,
  debtor_legal_name: Test debtor legal name,
  debtor_bsb: 123456,
  debtor_account: 123456789,
  clearing_system_transaction_id: INGBAU2SXXXN20181213009149405094650,
  remittance_information: 100014013068940,
  pay_id: npp@assemblypayments.com,
  pay_id_type: /EMAL,
  end_to_end_id: NOTPROVIDED,
  npp_payin_internal_id: 3a768370-8ebd-11ea-a8ab-af8225e7132d
)
```

