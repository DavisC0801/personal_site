require "./test/test_helper"

class HomepageTest < CapybaraTestCase

  def test_user_can_see_the_homepage
    #visit is a capybara method to load a page
    visit '/'

    #this line saves and opens the page in the browser
    #save_and_open_page
    #page is what is returned from visit
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end
end
