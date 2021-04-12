class StudentCoursesController < ApplicationController

  def create
    course = Course.find(params[:course_id])
    unless current_student.courses.include?(course)
      StudentCourse.create(student: current_student, course: course)
      flash[:notice] = "You are successfully enrolled in the course: #{course.name}"
      redirect_to current_student
    else
      flash[:notice] = "You are already enrolled in this course"
      redirect_to root_path
    end
  end

end
