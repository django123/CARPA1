require 'test_helper'

class EntryCouriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_courier = entry_couriers(:one)
  end

  test "should get index" do
    get entry_couriers_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_courier_url
    assert_response :success
  end

  test "should create entry_courier" do
    assert_difference('EntryCourier.count') do
      post entry_couriers_url, params: { entry_courier: { duration: @entry_courier.duration, project_id: @entry_courier.project_id, receiver: @entry_courier.receiver, reference: @entry_courier.reference, sender: @entry_courier.sender, state: @entry_courier.state, user_id: @entry_courier.user_id } }
    end

    assert_redirected_to entry_courier_url(EntryCourier.last)
  end

  test "should show entry_courier" do
    get entry_courier_url(@entry_courier)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_courier_url(@entry_courier)
    assert_response :success
  end

  test "should update entry_courier" do
    patch entry_courier_url(@entry_courier), params: { entry_courier: { duration: @entry_courier.duration, project_id: @entry_courier.project_id, receiver: @entry_courier.receiver, reference: @entry_courier.reference, sender: @entry_courier.sender, state: @entry_courier.state, user_id: @entry_courier.user_id } }
    assert_redirected_to entry_courier_url(@entry_courier)
  end

  test "should destroy entry_courier" do
    assert_difference('EntryCourier.count', -1) do
      delete entry_courier_url(@entry_courier)
    end

    assert_redirected_to entry_couriers_url
  end
end
