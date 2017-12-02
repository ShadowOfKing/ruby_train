require 'test_helper'

class CompetentionsControllerTest < ActionController::TestCase
  setup do
    @competention = competentions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competentions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competention" do
    assert_difference('Competention.count') do
      post :create, competention: { description: @competention.description, isdone: @competention.isdone, title: @competention.title }
    end

    assert_redirected_to competention_path(assigns(:competention))
  end

  test "should show competention" do
    get :show, id: @competention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competention
    assert_response :success
  end

  test "should update competention" do
    patch :update, id: @competention, competention: { description: @competention.description, isdone: @competention.isdone, title: @competention.title }
    assert_redirected_to competention_path(assigns(:competention))
  end

  test "should destroy competention" do
    assert_difference('Competention.count', -1) do
      delete :destroy, id: @competention
    end

    assert_redirected_to competentions_path
  end
end
