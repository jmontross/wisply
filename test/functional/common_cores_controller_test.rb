require 'test_helper'

class CommonCoresControllerTest < ActionController::TestCase
  setup do
    @common_core = common_cores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_cores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_core" do
    assert_difference('CommonCore.count') do
      post :create, :common_core => { :description => @common_core.description, :name => @common_core.name }
    end

    assert_redirected_to common_core_path(assigns(:common_core))
  end

  test "should show common_core" do
    get :show, :id => @common_core
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @common_core
    assert_response :success
  end

  test "should update common_core" do
    put :update, :id => @common_core, :common_core => { :description => @common_core.description, :name => @common_core.name }
    assert_redirected_to common_core_path(assigns(:common_core))
  end

  test "should destroy common_core" do
    assert_difference('CommonCore.count', -1) do
      delete :destroy, :id => @common_core
    end

    assert_redirected_to common_cores_path
  end
end
