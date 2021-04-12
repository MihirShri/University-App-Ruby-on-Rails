class CoursesController < ApplicationController
  skip_before_action :authenticate_student!, only: [:index]

  def index
    @courses = Course.all
  end

end