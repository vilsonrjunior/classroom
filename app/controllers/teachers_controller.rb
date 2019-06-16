class TeachersController < ApplicationController
   skip_before_action :authenticate_user!

  # def create
  # end

  def new
    #raise
    puts "Create new teacher in DB"
    #@teacher = Teacher.new
  end

  def index
    if params[:first_name].blank?
        @teachers = Teacher.all
    else
    @teachers = Teacher.select do |teacher|
      teacher.first_name == params[:first_name]
    end
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

end
