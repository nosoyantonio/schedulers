require "test_helper"

class TassksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tassk = tassks(:one)
  end

  test "should get index" do
    get tassks_url
    assert_response :success
  end

  test "should get new" do
    get new_tassk_url
    assert_response :success
  end

  test "should create tassk" do
    assert_difference('Tassk.count') do
      post tassks_url, params: { tassk: { code: @tassk.code, description: @tassk.description, due_date: @tassk.due_date, name: @tassk.name } }
    end

    assert_redirected_to tassk_url(Tassk.last)
  end

  test "should show tassk" do
    get tassk_url(@tassk)
    assert_response :success
  end

  test "should get edit" do
    get edit_tassk_url(@tassk)
    assert_response :success
  end

  test "should update tassk" do
    patch tassk_url(@tassk), params: { tassk: { code: @tassk.code, description: @tassk.description, due_date: @tassk.due_date, name: @tassk.name } }
    assert_redirected_to tassk_url(@tassk)
  end

  test "should destroy tassk" do
    assert_difference('Tassk.count', -1) do
      delete tassk_url(@tassk)
    end

    assert_redirected_to tassks_url
  end
end
