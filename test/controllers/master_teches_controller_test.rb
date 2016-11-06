require 'test_helper'

class MasterTechesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_tech = master_teches(:one)
  end

  test "should get index" do
    get master_teches_url
    assert_response :success
  end

  test "should get new" do
    get new_master_tech_url
    assert_response :success
  end

  test "should create master_tech" do
    assert_difference('MasterTech.count') do
      post master_teches_url, params: { master_tech: { desc: @master_tech.desc, initially_visible: @master_tech.initially_visible, level: @master_tech.level, name: @master_tech.name, unresearched_descr: @master_tech.unresearched_descr, wtd_id: @master_tech.wtd_id } }
    end

    assert_redirected_to master_tech_url(MasterTech.last)
  end

  test "should show master_tech" do
    get master_tech_url(@master_tech)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_tech_url(@master_tech)
    assert_response :success
  end

  test "should update master_tech" do
    patch master_tech_url(@master_tech), params: { master_tech: { desc: @master_tech.desc, initially_visible: @master_tech.initially_visible, level: @master_tech.level, name: @master_tech.name, unresearched_descr: @master_tech.unresearched_descr, wtd_id: @master_tech.wtd_id } }
    assert_redirected_to master_tech_url(@master_tech)
  end

  test "should destroy master_tech" do
    assert_difference('MasterTech.count', -1) do
      delete master_tech_url(@master_tech)
    end

    assert_redirected_to master_teches_url
  end
end
