# AssemblyRuby::TokensResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | JWT issued by AWS Cognito. | [optional] 
**expires_in** | **Float** | Lifetime of access token in seconds. | [optional] 
**token_type** | **String** | Authorization header value prefix. This is a constant. | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::TokensResponse.new(access_token: ey...J9.ey...n0.Iu...7g,
                                 expires_in: 3600,
                                 token_type: Bearer)
```


