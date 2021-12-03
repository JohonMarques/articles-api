require "test_helper"

class ArtcilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artciles_index_url
    assert_response :success
  end

  test "should get create" do
    get artciles_create_url
    assert_response :success
  end

  test "should get update" do
    get artciles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get artciles_destroy_url
    assert_response :success
  end
end
