require 'test_helper'

class ImageAssetsControllerTest < ActionController::TestCase
  setup do
    @image_asset = image_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_asset" do
    assert_difference('ImageAsset.count') do
      post :create, image_asset: { lg: @image_asset.lg, md: @image_asset.md, slug: @image_asset.slug, sm: @image_asset.sm, xs: @image_asset.xs }
    end

    assert_redirected_to image_asset_path(assigns(:image_asset))
  end

  test "should show image_asset" do
    get :show, id: @image_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_asset
    assert_response :success
  end

  test "should update image_asset" do
    patch :update, id: @image_asset, image_asset: { lg: @image_asset.lg, md: @image_asset.md, slug: @image_asset.slug, sm: @image_asset.sm, xs: @image_asset.xs }
    assert_redirected_to image_asset_path(assigns(:image_asset))
  end

  test "should destroy image_asset" do
    assert_difference('ImageAsset.count', -1) do
      delete :destroy, id: @image_asset
    end

    assert_redirected_to image_assets_path
  end
end
