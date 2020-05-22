require 'test_helper'

class KudosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kudo = kudos(:one)
  end

  test "should get index" do
    get kudos_url, as: :json
    assert_response :success
  end

  test "should create kudo" do
    assert_difference('Kudo.count') do
      post kudos_url, params: { kudo: { name: @kudo.name, type: @kudo.type } }, as: :json
    end

    assert_response 201
  end

  test "should show kudo" do
    get kudo_url(@kudo), as: :json
    assert_response :success
  end

  test "should update kudo" do
    patch kudo_url(@kudo), params: { kudo: { name: @kudo.name, type: @kudo.type } }, as: :json
    assert_response 200
  end

  test "should destroy kudo" do
    assert_difference('Kudo.count', -1) do
      delete kudo_url(@kudo), as: :json
    end

    assert_response 204
  end
end
