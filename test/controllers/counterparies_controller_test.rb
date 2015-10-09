require 'test_helper'

class CounterpariesControllerTest < ActionController::TestCase
  setup do
    @counterpary = counterparies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counterparies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counterpary" do
    assert_difference('Counterpary.count') do
      post :create, counterpary: { address: @counterpary.address, city: @counterpary.city, name: @counterpary.name, occupation: @counterpary.occupation, office: @counterpary.office, state: @counterpary.state, zip: @counterpary.zip }
    end

    assert_redirected_to counterpary_path(assigns(:counterpary))
  end

  test "should show counterpary" do
    get :show, id: @counterpary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @counterpary
    assert_response :success
  end

  test "should update counterpary" do
    patch :update, id: @counterpary, counterpary: { address: @counterpary.address, city: @counterpary.city, name: @counterpary.name, occupation: @counterpary.occupation, office: @counterpary.office, state: @counterpary.state, zip: @counterpary.zip }
    assert_redirected_to counterpary_path(assigns(:counterpary))
  end

  test "should destroy counterpary" do
    assert_difference('Counterpary.count', -1) do
      delete :destroy, id: @counterpary
    end

    assert_redirected_to counterparies_path
  end
end
