class CoursesController < ApplicationController

  def index
    if current_teacher.admin?
      @courses = Course.all
      @course = Course.new
    else
      @teacher = current_teacher
    end
  end

  def show
    if current_teacher.admin?
      @course = Course.find(params[:id])
    else
      @teacher = current_teacher
    end
  end

  def new
    if current_teacher.admin?
    @course = Course.new
    end
  end

  def create
    if current_teacher.admin?
    @course = Course.new(course_params)
    end

    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :level, :description, :teacher_id, :student_id)
  end
end

# ONLY ADMIN CAN CREATE COURSES
# ONCE THE COURSE IS CREATED, ADMIN MUST ASSIGN IT TO A TEACHER
# TEACHER CAN THEN ENTER COURSE



  # def show
  #   @listing = Listing.find(params[:id])
  #   @booking = Booking.new
  #   @user = current_user
  #   @wishlist_item = WishlistItem.new
  #   @wishlist_check = WishlistItem.where(listing_id: @listing.id, user_id: current_user.id) unless current_user.nil?
  #   # raise
  # end
























# class CoursesController < ApplicationController

#   def index
#     @courses = Course.all
#     @course = Course.new
#   end

#   def show
#     @course = Course.find(params[:id])
#     @lesson = Lesson.new
#   end

#   def new
#     @course = Course.new
#   end

#   def create
#     @course = Course.new(course_params)
#     @course.teacher = current_teacher

#     if @course.save
#       redirect_to course_path(@course)
#     else
#       render :new
#     end
#   end

#    private

#   def course_params
#     params.require(:course).permit(:school, :name, :description)
#   end
# end
