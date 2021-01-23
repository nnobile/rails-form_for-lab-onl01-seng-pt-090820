require 'pry'

class SchoolClassesController < ApplicationController


  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    #binding.pry
    @school_class = SchoolClass.new(params.require(:school_class).permit!)
	@school_class.save
	redirect_to school_class_path(@school_class)
  end

  def update
	@school_class = SchoolClass.find(params[:id])
	@school_class.update(params.require(:school_class).permit!)
	redirect_to school_class_path(@school_class)
   end

end