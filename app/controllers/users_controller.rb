class UsersController < ApplicationController
  def index
    @courses = current_user.courses
    @grades = current_user.grades
  end
end
