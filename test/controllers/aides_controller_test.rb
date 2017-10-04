require 'test_helper'

class AidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aide = aides(:one)
  end

  test "should get index" do
    get aides_url
    assert_response :success
  end

  test "should get new" do
    get new_aide_url
    assert_response :success
  end

  test "should create aide" do
    assert_difference('Aide.count') do
      post aides_url, params: { aide: { name: @aide.name, slack_name: @aide.slack_name } }
    end

    assert_redirected_to aide_url(Aide.last)
  end

  test "should show aide" do
    get aide_url(@aide)
    assert_response :success
  end

  test "should get edit" do
    get edit_aide_url(@aide)
    assert_response :success
  end

  test "should update aide" do
    patch aide_url(@aide), params: { aide: { name: @aide.name, slack_name: @aide.slack_name } }
    assert_redirected_to aide_url(@aide)
  end

  test "should destroy aide" do
    assert_difference('Aide.count', -1) do
      delete aide_url(@aide)
    end

    assert_redirected_to aides_url
  end
end
