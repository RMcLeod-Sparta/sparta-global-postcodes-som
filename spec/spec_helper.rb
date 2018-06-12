require 'rspec'
require_relative '../lib/Postcodesio'
require_relative '../lib/random_postcode_generator'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
