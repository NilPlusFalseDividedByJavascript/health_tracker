require 'test_helper'

class WeightsControllerTest < ActionController::TestCase

  setup do
    @potato = weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @potato.id
    assert_response :success
  end




  test "should create weight" do
    assert_difference('Weight.count') do
      post :create, weight: { weigh_date: @potato.weigh_date, weight: @potato.weight }
    end

    assert_redirected_to weight_path(assigns(:weight))
  end



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
