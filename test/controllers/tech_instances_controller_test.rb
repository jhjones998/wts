require 'test_helper'

class TechInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_instance = tech_instances(:one)
  end

  test "should get index" do
    get tech_instances_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_instance_url
    assert_response :success
  end

  test "should create tech_instance" do
    assert_difference('TechInstance.count') do
      post tech_instances_url, params: { tech_instance: {country_id: @tech_instance.country, master_tech_id: @tech_instance.master_tech_id, partial_credit: @tech_instance.partial_credit, researching: @tech_instance.researching, visible: @tech_instance.visible } }
    end

    assert_redirected_to tech_instance_url(TechInstance.last)
  end

  test "should show tech_instance" do
    get tech_instance_url(@tech_instance)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_instance_url(@tech_instance)
    assert_response :success
  end

  test "should update tech_instance" do
    patch tech_instance_url(@tech_instance), params: { tech_instance: {country_id: @tech_instance.country, master_tech_id: @tech_instance.master_tech_id, partial_credit: @tech_instance.partial_credit, researching: @tech_instance.researching, visible: @tech_instance.visible } }
    assert_redirected_to tech_instance_url(@tech_instance)
  end

  test "should destroy tech_instance" do
    assert_difference('TechInstance.count', -1) do
      delete tech_instance_url(@tech_instance)
    end

    assert_redirected_to tech_instances_url
  end
end
