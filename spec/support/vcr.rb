VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/cassettes'
  config.hook_into :webmock
  config.allow_http_connections_when_no_cassette = true
  config.configure_rspec_metadata!
  config.ignore_localhost = true
end
