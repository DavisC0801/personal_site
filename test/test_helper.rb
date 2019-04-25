require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require "./app/controllers/personal_site.rb"

# instructions for this are in capybara docs, setup section.

Capybara.app = PersonalSite

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end

# for use with multiple sessions or drivers

# def teardown
#   Capybara.reset_sessions!
#   Capybara.use_default_driver
# end
