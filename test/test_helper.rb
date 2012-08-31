ENV["RAILS_ENV"] = "test"

require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'capybara/rails'
require 'capybara/cucumber'

class Cucumber::Rails::World
    include Capybara::DSL

    def get_post_by_id(id)
        Post.find_by_id id
    end

    def get_post_by_title(title)
        Post.find_by_title title
    end
end

class ActiveSupport::TestCase
    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
    #
    # Note: You'll currently still have to declare fixtures explicitly in integration tests
    # -- they do not yet inherit this setting
    fixtures :all

    # Add more helper methods to be used by all tests here...
end
