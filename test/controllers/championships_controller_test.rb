require 'test_helper'

class ChampionshipsControllerTest < ActionController::TestCase
  setup do
    @championship = championships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:championships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create championship" do
    assert_difference('Championship.count') do
      post :create, championship: { finish_date: @championship.finish_date, name: @championship.name, sport: @championship.sport, start_date: @championship.start_date, user_id: @championship.user_id }
    end

    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should show championship" do
    get :show, id: @championship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @championship
    assert_response :success
  end

  test "should update championship" do
    patch :update, id: @championship, championship: { finish_date: @championship.finish_date, name: @championship.name, sport: @championship.sport, start_date: @championship.start_date, user_id: @championship.user_id }
    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should destroy championship" do
    assert_difference('Championship.count', -1) do
      delete :destroy, id: @championship
    end

    assert_redirected_to championships_path
  end
end
