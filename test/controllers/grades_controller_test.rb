require 'test_helper'

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get grades_import_url
    assert_response :success
  end

end
