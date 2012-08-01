require 'test_helper'

class BioInfosControllerTest < ActionController::TestCase
  setup do
    @bio_info = bio_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bio_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bio_info" do
    assert_difference('BioInfo.count') do
      post :create, :bio_info => { :country_id => @bio_info.country_id, :dob => @bio_info.dob, :married => @bio_info.married }
    end

    assert_redirected_to bio_info_path(assigns(:bio_info))
  end

  test "should show bio_info" do
    get :show, :id => @bio_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bio_info
    assert_response :success
  end

  test "should update bio_info" do
    put :update, :id => @bio_info, :bio_info => { :country_id => @bio_info.country_id, :dob => @bio_info.dob, :married => @bio_info.married }
    assert_redirected_to bio_info_path(assigns(:bio_info))
  end

  test "should destroy bio_info" do
    assert_difference('BioInfo.count', -1) do
      delete :destroy, :id => @bio_info
    end

    assert_redirected_to bio_infos_path
  end
end
