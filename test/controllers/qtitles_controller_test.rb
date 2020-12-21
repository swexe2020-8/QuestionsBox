require 'test_helper'

class QtitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qtitles_index_url
    assert_response :success
  end

  test "should get show" do
    get qtitles_show_url
    assert_response :success
  end

end
