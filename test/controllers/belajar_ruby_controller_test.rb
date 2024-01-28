require "test_helper"

class BelajarRubyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get belajar_ruby_index_url
    assert_response :success
  end
end
