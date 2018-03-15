require 'test_helper'

class NominasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nominas_index_url
    assert_response :success
  end

end
