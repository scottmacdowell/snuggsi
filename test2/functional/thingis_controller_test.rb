require 'test_helper'

class ThingisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thingis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thingi" do
    assert_difference('Thingi.count') do
      post :create, :thingi => thingis(:one).attributes
    end

    assert_redirected_to thingi_path(assigns(:thingi))
  end

  test "should show thingi" do
    get :show, :id => thingis(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => thingis(:one).to_param
    assert_response :success
  end

  test "should update thingi" do
    put :update, :id => thingis(:one).to_param, :thingi => thingis(:one).attributes
    assert_redirected_to thingi_path(assigns(:thingi))
  end

  test "should destroy thingi" do
    assert_difference('Thingi.count', -1) do
      delete :destroy, :id => thingis(:one).to_param
    end

    assert_redirected_to thingis_path
  end
end
