require "test_helper"

class GordensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gordens_index_url
    assert_response :success
  end

  test "should get show" do
    get gordens_show_url
    assert_response :success
  end
end
