class StudentsController < ApplicationController

  def index
  	@students = Student.all
  	# @house = House.where(:id => Student.house_id)
  end

  def show
    @student = Student.find(params[:id])
    @house = House.find_by(:id => @student.house_id)
  end

  def create
  	@new_student = Student.create(student_params)
  	@new_student_house = 1..4.sample
  end

  def new
  	@new_student = Student.new
  end

  private

  	def student_params
      params.require(:student).permit(:name, :img_url, :house_id)
    end
end