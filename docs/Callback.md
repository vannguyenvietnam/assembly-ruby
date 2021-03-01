# AssemblyRuby::Callback

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**url** | **String** |  | [optional] 
**object_type** | **String** |  | [optional] 
**enabled** | **Boolean** |  | [optional] 
**authorization_token** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**marketplace_id** | **String** |  | [optional] 
**links** | [**CallbackLinks**](CallbackLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::Callback.new(id: f92d4ca1-4ee5-43f3-9e34-ca5f759c5e76,
                                 description: Users Callback,
                                 url: https://httpbin.org/post,
                                 object_type: users,
                                 enabled: true,
                                 authorization_token: null,
                                 created_at: null,
                                 updated_at: null,
                                 marketplace_id: null,
                                 links: null)
```


