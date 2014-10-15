![Travis](https://travis-ci.org/floatingpointio/shipping_api.svg?branch=master)
[![Code Climate](https://codeclimate.com/github/floatingpointio/shipping_api/badges/gpa.svg)](https://codeclimate.com/github/floatingpointio/shipping_api)

# ShippingApi

Client for accessing common shipping API.

## Installation

For standalone installation you should clone the project and manually require it wherever you need it.

If using Bundler in you project, you should install it directly from Github.

`gem 'apartment', :github => 'floatingpointio/shipping_api'`


## Usage

To use it, you create a new ```ShippingAPI::Client``` as an API URL and an API key as params.
Like this:

```ruby
require 'shipping_api'

client = ShippingAPI::Client.new(
  'http://shipping.example.com/api',
  '00000000-0000-0000-0000-000000000000'
)
```

After you have the client you can interact with the API using client's methods. All methods are a 1-1 mapping to the official API endpoints. The only difference is that Ruby client's method names are in snake_case and the official API endpoint names are camelCase.

If for example wanted to fetch all supported locations you would do:

```ruby
response = client.get_locations
```

All response objects are actually Hashes. Depending on the success of the request, the response contains either the fields of the resource specified by the API documentation, or the errors that caused the request to fail.

The valid response:
```json
{
  "PostalLocations"=> [
    {"Name"=>"Some Location", "PostalCode"=>"10000"},
    {"Name"=>"Another Location", "PostalCode"=>"90000"}
  ]
}
```

The invalid response:
```
{
  errors: {
    model: [{code: 10000, msg: 'InvalidApiKey'},...],
    validation: [{field: 'FieldName', msg: 'Field is required'},...]
  }
}
```

All resource endpoints are specified in the official [API docs](http://wiki.infranet.hr/index.php?title=Shipping_API_Technical_Reference).
