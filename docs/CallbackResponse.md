# AssemblyRuby::CallbackResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**url** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**payload** | [**CallbackResponsePayload**](CallbackResponsePayload.md) |  | [optional] 
**response** | [**CallbackResponseResponse**](CallbackResponseResponse.md) |  | [optional] 
**response_code** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::CallbackResponse.new(id: 4476b384-fa48-4473-98ec-8fcdda4a1e84,
                                 url: https://httpbin.org/post,
                                 created_at: null,
                                 payload: null,
                                 response: null,
                                 response_code: 200)
```


