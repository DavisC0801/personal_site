require "./test/test_helper"

class AboutPageTest < CapybaraTestCase

  def test_user_can_see_the_about_page
    visit "/"
    click_on "About Page"

    assert_equal 200, page.status_code
    assert_equal "/about", current_path
    assert page.has_content?("About Me!")
  end
end
