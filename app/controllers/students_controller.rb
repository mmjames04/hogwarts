class StudentsController < ApplicationController

  def index
  	@students = Student.all
  	# @house = House.where(:id => Student.house_id)
  end

  def show
    @student = Student.find(params[:id])
    @house = House.find_by(:id => @student.house_id)
  end

end