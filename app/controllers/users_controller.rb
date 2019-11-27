class UsersController < ApplicationController
  require 'csv'
  def index
    @grades = current_user.grades.order('updated_at DESC')
  end

  def show
    @courses = current_user.courses
  end

  def import
    User.import(params[:file])

    redirect_to root_url, notice: "Data succesfully imported"
  end
end
