class TeachersController < ApplicationController
  skip_before_action :authenticate_teacher!

  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to teachers_path
    else
      render :new
    end
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
  end

  def edit
  end

  def update
    @teacher.update(teacher_params)
    redirect_to teacher_path
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :language, :email)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
