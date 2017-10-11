require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get authentication 未ログイン->リダイレクト" do
    get home_authentication_url
    assert_redirected_to '/users/sign_in'
  end

  test "should get authentication ログイン" do
    sign_in(users(:one))
    get home_authentication_url
    assert_response :success
  end

end
