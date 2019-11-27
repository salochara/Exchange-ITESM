class GradesController < ApplicationController
  def import
    Grade.import(params[:file])
    #redirect_to root_path, notice: "Grades imported"
  end
end
