require 'test_helper'

class BingImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bing_image = bing_images(:one)
  end

  test "should get index" do
    get bing_images_url
    assert_response :success
  end

  test "should get new" do
    get new_bing_image_url
    assert_response :success
  end

  test "should create bing_image" do
    assert_difference('BingImage.count') do
      post bing_images_url, params: { bing_image: { link: @bing_image.link } }
    end

    assert_redirected_to bing_image_url(BingImage.last)
  end

  test "should show bing_image" do
    get bing_image_url(@bing_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_bing_image_url(@bing_image)
    assert_response :success
  end

  test "should update bing_image" do
    patch bing_image_url(@bing_image), params: { bing_image: { link: @bing_image.link } }
    assert_redirected_to bing_image_url(@bing_image)
  end

  test "should destroy bing_image" do
    assert_difference('BingImage.count', -1) do
      delete bing_image_url(@bing_image)
    end

    assert_redirected_to bing_images_url
  end
end
