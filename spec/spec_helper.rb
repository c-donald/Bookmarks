require 'simplecov'
require 'simplecov-console'
SimpleCov.start
SimpleCov.formatter = SimpleCov::Formatter::Console

ENV['ENVIRONMENT'] = "test"
require_relative './web-helpers'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_env
  end
  ENV['RACK_ENV'] = 'test'
  require_relative '../app.rb'
  require 'capybara'
  require 'capybara/rspec'
  require 'rspec'
  

  Capybara.app = Book_Marks



  config.expect_with :rspec do |expectations|
   
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  
  config.shared_context_metadata_behavior = :apply_to_host_groups

end
