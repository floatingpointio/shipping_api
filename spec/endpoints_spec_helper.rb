require 'webmock/rspec'
require 'vcr'
require 'dotenv'

Dotenv.load

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
  c.ignore_localhost = true
end

WebMock.allow_net_connect!