require 'test_helper'

class ExcercisesControllerTest < ActionController::TestCase
  setup do
    @excercise = excercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:excercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create excercise" do
    assert_difference('Excercise.count') do
      post :create, excercise: { burn_date: @excercise.burn_date, cal_burn: @excercise.cal_burn }
    end

    assert_redirected_to excercise_path(assigns(:excercise))
  end

  test "should show excercise" do
    get :show, id: @excercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @excercise
    assert_response :success
  end

  test "should update excercise" do
    patch :update, id: @excercise, excercise: { burn_date: @excercise.burn_date, cal_burn: @excercise.cal_burn }
    assert_redirected_to excercise_path(assigns(:excercise))
  end

  test "should destroy excercise" do
    assert_difference('Excercise.count', -1) do
      delete :destroy, id: @excercise
    end

    assert_redirected_to excercises_path
  end
end
