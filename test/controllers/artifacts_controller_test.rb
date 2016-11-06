require 'test_helper'

class ArtifactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artifact = artifacts(:one)
  end

  test "should get index" do
    get artifacts_url
    assert_response :success
  end

  test "should get new" do
    get new_artifact_url
    assert_response :success
  end

  test "should create artifact" do
    assert_difference('Artifact.count') do
      post artifacts_url, params: { artifact: { country: @artifact.country, l1: @artifact.l1, l2: @artifact.l2, l3: @artifact.l3, l4: @artifact.l4, l5: @artifact.l5, l6: @artifact.l6 } }
    end

    assert_redirected_to artifact_url(Artifact.last)
  end

  test "should show artifact" do
    get artifact_url(@artifact)
    assert_response :success
  end

  test "should get edit" do
    get edit_artifact_url(@artifact)
    assert_response :success
  end

  test "should update artifact" do
    patch artifact_url(@artifact), params: { artifact: { country: @artifact.country, l1: @artifact.l1, l2: @artifact.l2, l3: @artifact.l3, l4: @artifact.l4, l5: @artifact.l5, l6: @artifact.l6 } }
    assert_redirected_to artifact_url(@artifact)
  end

  test "should destroy artifact" do
    assert_difference('Artifact.count', -1) do
      delete artifact_url(@artifact)
    end

    assert_redirected_to artifacts_url
  end
end
