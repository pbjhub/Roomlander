require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { animals: @room.animals, bathroom: @room.bathroom, boys: @room.boys, dep: @room.dep, description: @room.description, garage: @room.garage, girls: @room.girls, home: @room.home, location: @room.location, nanimals: @room.nanimals, nsmoke: @room.nsmoke, price: @room.price, quick: @room.quick, servinc: @room.servinc, smoke: @room.smoke, urgent: @room.urgent, user_id: @room.user_id }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { animals: @room.animals, bathroom: @room.bathroom, boys: @room.boys, dep: @room.dep, description: @room.description, garage: @room.garage, girls: @room.girls, home: @room.home, location: @room.location, nanimals: @room.nanimals, nsmoke: @room.nsmoke, price: @room.price, quick: @room.quick, servinc: @room.servinc, smoke: @room.smoke, urgent: @room.urgent, user_id: @room.user_id }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
