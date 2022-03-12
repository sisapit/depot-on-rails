require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    # # -> id selector
    # . -> class attributes selector
    # no prefix -> element selector
    assert_select 'nav a', minimum: 4
    assert_select 'main ul li', 3
    assert_select 'h2', 'Programming Ruby 1.9'
    # Test price format
    assert_select 'div', /\EUR [\.\d]+,\d\d/
  end
end
