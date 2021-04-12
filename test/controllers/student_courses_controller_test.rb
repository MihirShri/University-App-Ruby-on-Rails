require "test_helper"

class StudentCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get student_courses_create_url
    assert_response :success
  end
end
