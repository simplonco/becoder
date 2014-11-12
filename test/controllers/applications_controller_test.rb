require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase

  test "new" do
    get :new
    assert_response :success
  end

end
