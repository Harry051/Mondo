require "test_helper"

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favourites_index_url
    assert_response :success
  end
end
