require "./test/test_helper"

class ErrorPageTest < CapybaraTestCase

  def test_user_can_see_the_about_page
    visit "/test"

    assert_equal 404, page.status_code
    assert_equal "/test", current_path
    assert page.has_content?("Page not found.")
  end
end
