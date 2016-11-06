require 'test_helper'

class TechTreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_tree = tech_trees(:one)
  end

  test "should get index" do
    get tech_trees_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_tree_url
    assert_response :success
  end

  test "should create tech_tree" do
    assert_difference('TechTree.count') do
      post tech_trees_url, params: { tech_tree: { master_tech: @tech_tree.master_tech, master_tech_id: @tech_tree.master_tech_id } }
    end

    assert_redirected_to tech_tree_url(TechTree.last)
  end

  test "should show tech_tree" do
    get tech_tree_url(@tech_tree)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_tree_url(@tech_tree)
    assert_response :success
  end

  test "should update tech_tree" do
    patch tech_tree_url(@tech_tree), params: { tech_tree: { master_tech: @tech_tree.master_tech, master_tech_id: @tech_tree.master_tech_id } }
    assert_redirected_to tech_tree_url(@tech_tree)
  end

  test "should destroy tech_tree" do
    assert_difference('TechTree.count', -1) do
      delete tech_tree_url(@tech_tree)
    end

    assert_redirected_to tech_trees_url
  end
end
