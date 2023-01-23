require "test_helper"

class ScansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scan = scans(:one)
  end

  test "should get index" do
    get scans_url, as: :json
    assert_response :success
  end

  test "should create scan" do
    assert_difference("Scan.count") do
      post scans_url, params: { scan: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show scan" do
    get scan_url(@scan), as: :json
    assert_response :success
  end

  test "should update scan" do
    patch scan_url(@scan), params: { scan: {  } }, as: :json
    assert_response :success
  end

  test "should destroy scan" do
    assert_difference("Scan.count", -1) do
      delete scan_url(@scan), as: :json
    end

    assert_response :no_content
  end
end
