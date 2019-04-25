require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require "./app/controller/personal_site.rb"

Capybara.app = PersonalSite

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end
