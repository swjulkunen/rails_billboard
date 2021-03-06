require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tops_index_url
    assert_response :success
  end

  test "should get show" do
    get tops_show_url
    assert_response :success
  end

  test "should get new" do
    get tops_new_url
    assert_response :success
  end

  test "should get edit" do
    get tops_edit_url
    assert_response :success
  end

end
