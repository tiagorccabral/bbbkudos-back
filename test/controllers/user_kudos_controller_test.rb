require 'test_helper'

class UserKudosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_kudo = user_kudos(:one)
  end

  test "should get index" do
    get user_kudos_url, as: :json
    assert_response :success
  end

  test "should create user_kudo" do
    assert_difference('UserKudo.count') do
      post user_kudos_url, params: { user_kudo: { kudo_id: @user_kudo.kudo_id, user_id: @user_kudo.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_kudo" do
    get user_kudo_url(@user_kudo), as: :json
    assert_response :success
  end

  test "should update user_kudo" do
    patch user_kudo_url(@user_kudo), params: { user_kudo: { kudo_id: @user_kudo.kudo_id, user_id: @user_kudo.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_kudo" do
    assert_difference('UserKudo.count', -1) do
      delete user_kudo_url(@user_kudo), as: :json
    end

    assert_response 204
  end
end
