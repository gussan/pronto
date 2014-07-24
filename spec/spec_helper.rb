require 'rspec'
require 'pronto'

RSpec.configure do |config|
  config.color_enabled = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
end

def repository
  Rugged::Repository.init_at('.')
end

def load_fixture(fixture_name)
  path = File.join(%w(spec support files), fixture_name)
  File.read(path).strip
end
