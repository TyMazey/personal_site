require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_gets_an_error_page
    visit '/thisurlshouldnotexsist'

    assert page.has_content?("Page Not Found.")
    assert_equal 404, page.status_code
  end
end
