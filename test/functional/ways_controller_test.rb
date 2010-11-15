require 'test_helper'

class WaysControllerTest < ActionController::TestCase
  setup do
    @way = ways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create way" do
    assert_difference('Way.count') do
      post :create, :way => @way.attributes
    end

    assert_redirected_to way_path(assigns(:way))
  end

  test "should show way" do
    get :show, :id => @way.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @way.to_param
    assert_response :success
  end

  test "should update way" do
    put :update, :id => @way.to_param, :way => @way.attributes
    assert_redirected_to way_path(assigns(:way))
  end

  test "should destroy way" do
    assert_difference('Way.count', -1) do
      delete :destroy, :id => @way.to_param
    end

    assert_redirected_to ways_path
  end
end
