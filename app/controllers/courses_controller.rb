class CoursesController < ApplicationController

  def index
    if current_teacher.admin?
      @courses = Course.all
      @course = Course.new
    else
      # raise
      @teacher = current_teacher
    end
  end

  def show
    @course = Course.find(params[:id])
    @course.students
    # raise
    # @students = Student.find(params[:student_id])
  end

  def new
    if current_teacher.admin?
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
     @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path
  end


  private

  def course_params
    params.require(:course).permit(:name, :level, :description, :teacher_id, :student_id)
  end
end

# ONLY ADMIN CAN CREATE COURSES
# ONCE THE COURSE IS CREATED, ADMIN MUST ASSIGN IT TO A TEACHER
# TEACHER CAN THEN ENTER COURSE


