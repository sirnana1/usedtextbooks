require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get about_contact_url
    assert_response :success
  end

end
