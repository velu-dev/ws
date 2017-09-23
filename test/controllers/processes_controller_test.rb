require 'test_helper'

class ProcessesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get processes_dashboard_url
    assert_response :success
  end

end
