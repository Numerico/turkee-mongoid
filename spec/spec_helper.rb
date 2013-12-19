#require 'rubygems'
#require "bundler/setup"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'factory_girl'
require 'spork'
require 'rails/all'
require 'rturk'
require 'lockfile'
#require 'active_support/dependencies/autoload'
#require 'action_view'
require 'rspec/rails'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  FactoryGirl.find_definitions

  RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods

    # == Mock Framework
    # 
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

    config.include Turkee::TurkeeFormHelper

    #config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, comment the following line or assign false
    # instead of true.
    #config.use_transactional_fixtures = true
  end

end

Spork.each_run do
  $LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
  Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}
end