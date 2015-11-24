require 'test_helper'

class ROutesControllerTest < ActionController::TestCase
  setup do
    @r_oute = r_outes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_outes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_oute" do
    assert_difference('ROute.count') do
      post :create, r_oute: {  }
    end

    assert_redirected_to r_oute_path(assigns(:r_oute))
  end

  test "should show r_oute" do
    get :show, id: @r_oute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_oute
    assert_response :success
  end

  test "should update r_oute" do
    patch :update, id: @r_oute, r_oute: {  }
    assert_redirected_to r_oute_path(assigns(:r_oute))
  end

  test "should destroy r_oute" do
    assert_difference('ROute.count', -1) do
      delete :destroy, id: @r_oute
    end

    assert_redirected_to r_outes_path
  end
end
