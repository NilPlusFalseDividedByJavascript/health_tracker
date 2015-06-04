require 'test_helper'

class WeightsControllerTest < ActionController::TestCase

  setup do
    @weight = weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: weights(:one).id
    assert_response :success
  end




  test "should get create" do
    post :create, weight: { weigh_date: @weight.weigh_date, weight: @weight.weight }
    assert_response :success
  end
  #assert_redirected_to step_path(assigns(:step))



  # test "should create step" do
  #   assert_difference('Step.count') do
  #     post :create, step: { step_date: @step.step_date, steps_taken: @step.steps_taken }
  #   end
  #
  #   assert_redirected_to step_path(assigns(:step))
  # end










  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: weights(:one).id
    assert_response :success
  end

  test "should get update" do
    get :update, id: weights(:one).id
    assert_response :success
  end

  test "should get destroy" do
    get :destroy, id: weights(:one).id
    assert_response :success
  end



end
