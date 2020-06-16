require 'test_helper'

class AdvisersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advisers_index_url
    assert_response :success
  end

end
