Dotenv.load

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.default_cassette_options = {
    record: :once,
    re_record_interval: 60 * 60 * 24 # 1 day
  }
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
  c.ignore_localhost = true
end

WebMock.allow_net_connect!

def post_data(endpoint)
  path = File.join('spec/fixtures/post_data', endpoint + '.json')
  JSON.parse(File.read(path))
end
