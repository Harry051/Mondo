require "test_helper"

class CookedDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cooked_dishes_create_url
    assert_response :success
  end
end
