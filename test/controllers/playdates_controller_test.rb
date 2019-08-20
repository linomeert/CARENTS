require 'test_helper'

class PlaydatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get playdates_index_url
    assert_response :success
  end

  test "should get edit" do
    get playdates_edit_url
    assert_response :success
  end

  test "should get new" do
    get playdates_new_url
    assert_response :success
  end

  test "should get show" do
    get playdates_show_url
    assert_response :success
  end

end
