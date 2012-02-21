require 'test_helper'

class RatesheetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ratesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ratesheet" do
    assert_difference('Ratesheet.count') do
      post :create, :ratesheet => { }
    end

    assert_redirected_to ratesheet_path(assigns(:ratesheet))
  end

  test "should show ratesheet" do
    get :show, :id => ratesheets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ratesheets(:one).to_param
    assert_response :success
  end

  test "should update ratesheet" do
    put :update, :id => ratesheets(:one).to_param, :ratesheet => { }
    assert_redirected_to ratesheet_path(assigns(:ratesheet))
  end

  test "should destroy ratesheet" do
    assert_difference('Ratesheet.count', -1) do
      delete :destroy, :id => ratesheets(:one).to_param
    end

    assert_redirected_to ratesheets_path
  end
end
