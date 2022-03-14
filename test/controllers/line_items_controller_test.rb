require "test_helper"

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_line_item_url
    assert_response :success
  end

  test "should create line item" do
    assert_difference("LineItem.count") do
      post line_items_url, params: { product_id: products(:ruby).id }
    end
    follow_redirect!
    assert_select 'h2', 'Your Pragmatic Cart'
    # Caution: <section><nav> contains some <li> as well, so we need to use a more specific selector!
    assert_select 'main ul li', '1 × Programming Ruby 1.9'
  end

  test "should show line item" do
    get line_item_url(@line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_item_url(@line_item)
    assert_response :success
  end

  test "should update line item" do
    patch line_item_url(@line_item),
          params: { line_item: { product_id: @line_item.product_id } }
    assert_redirected_to line_item_url(@line_item)
  end

  test "should destroy line item" do
    assert_difference("LineItem.count", -1) do
      delete line_item_url(@line_item)
    end

    assert_redirected_to line_items_url
  end
end
