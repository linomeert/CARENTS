require 'test_helper'

class ConversationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get conversation_show_url
    assert_response :success
  end

end
