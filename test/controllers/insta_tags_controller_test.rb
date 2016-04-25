require 'test_helper'

class InstaTagsControllerTest < ActionController::TestCase
  setup do
    @insta_tag = insta_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insta_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insta_tag" do
    assert_difference('InstaTag.count') do
      post :create, insta_tag: { name: @insta_tag.name }
    end

    assert_redirected_to insta_tag_path(assigns(:insta_tag))
  end

  test "should show insta_tag" do
    get :show, id: @insta_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insta_tag
    assert_response :success
  end

  test "should update insta_tag" do
    patch :update, id: @insta_tag, insta_tag: { name: @insta_tag.name }
    assert_redirected_to insta_tag_path(assigns(:insta_tag))
  end

  test "should destroy insta_tag" do
    assert_difference('InstaTag.count', -1) do
      delete :destroy, id: @insta_tag
    end

    assert_redirected_to insta_tags_path
  end
end
