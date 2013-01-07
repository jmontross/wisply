require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post :create, assignment: { author: @assignment.author, common_core: @assignment.common_core, description: @assignment.description, educational_use: @assignment.educational_use, in_language: @assignment.in_language, intended_end_userole: @assignment.intended_end_userole, interactivity_type: @assignment.interactivity_type, is_based_on_url: @assignment.is_based_on_url, learning_resource_type: @assignment.learning_resource_type, location: @assignment.location, publisher_id: @assignment.publisher_id, time_required: @assignment.time_required, title: @assignment.title, typical_age_range: @assignment.typical_age_range, use_rights_url: @assignment.use_rights_url }
    end

    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should show assignment" do
    get :show, id: @assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment
    assert_response :success
  end

  test "should update assignment" do
    put :update, id: @assignment, assignment: { author: @assignment.author, common_core: @assignment.common_core, description: @assignment.description, educational_use: @assignment.educational_use, in_language: @assignment.in_language, intended_end_userole: @assignment.intended_end_userole, interactivity_type: @assignment.interactivity_type, is_based_on_url: @assignment.is_based_on_url, learning_resource_type: @assignment.learning_resource_type, location: @assignment.location, publisher_id: @assignment.publisher_id, time_required: @assignment.time_required, title: @assignment.title, typical_age_range: @assignment.typical_age_range, use_rights_url: @assignment.use_rights_url }
    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete :destroy, id: @assignment
    end

    assert_redirected_to assignments_path
  end
end
