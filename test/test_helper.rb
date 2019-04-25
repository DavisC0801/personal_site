require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require "./app/controllers/personal_site.rb"

# instructions for this are in capybara docs, setup section.

Capybara.app = PersonalSite
#this line sets the temporary webpages to go to a tmp folder instead of root.
Capybara.save_path = './tmp/capybara'

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end

# for use with multiple sessions or drivers

# def teardown
#   Capybara.reset_sessions!
#   Capybara.use_default_driver
# end
