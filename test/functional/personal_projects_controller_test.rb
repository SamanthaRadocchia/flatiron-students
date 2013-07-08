require 'test_helper'

class PersonalProjectsControllerTest < ActionController::TestCase
  setup do
    @personal_project = personal_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_project" do
    assert_difference('PersonalProject.count') do
      post :create, personal_project: { description: @personal_project.description, name: @personal_project.name, student_id: @personal_project.student_id }
    end

    assert_redirected_to personal_project_path(assigns(:personal_project))
  end

  test "should show personal_project" do
    get :show, id: @personal_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_project
    assert_response :success
  end

  test "should update personal_project" do
    put :update, id: @personal_project, personal_project: { description: @personal_project.description, name: @personal_project.name, student_id: @personal_project.student_id }
    assert_redirected_to personal_project_path(assigns(:personal_project))
  end

  test "should destroy personal_project" do
    assert_difference('PersonalProject.count', -1) do
      delete :destroy, id: @personal_project
    end

    assert_redirected_to personal_projects_path
  end
end
