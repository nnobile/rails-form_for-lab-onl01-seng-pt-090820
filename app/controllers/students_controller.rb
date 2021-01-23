class StudentsController < ApplicationController

  def show
    #binding.pry
    @student = Student.find_by(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    #binding.pry
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.new(params.require(:student).permit!)
	  @student.save
	  redirect_to student_path(@student)
  end

  def update
    #binding.pry
	  @student = Student.find(params[:id])
	  @student.update(params.require(:student).permit!)
	  redirect_to student_path(@student)
  end

end
