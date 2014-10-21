require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase

  test "new" do
    get :new
    assert_response :succes
  end
  
end
