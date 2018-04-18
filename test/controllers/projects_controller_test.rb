require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { amount: @project.amount, focal_point: @project.focal_point, object_project: @project.object_project, private_partenership: @project.private_partenership, project_code: @project.project_code, project_situation: @project.project_situation, public_partenership: @project.public_partenership, reference: @project.reference } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { amount: @project.amount, focal_point: @project.focal_point, object_project: @project.object_project, private_partenership: @project.private_partenership, project_code: @project.project_code, project_situation: @project.project_situation, public_partenership: @project.public_partenership, reference: @project.reference } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
