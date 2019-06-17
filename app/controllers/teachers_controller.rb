class TeachersController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to teachers_path
    else
      render :new
    end
  end

  def new
    @teacher = Teacher.new
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

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :language, :email)
  end
end
