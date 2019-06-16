class TeachersController < ApplicationController

TEACHERS = {
1 => {first_name: "Tatiane", last_name: "Depieri", languages: "English", email: "tatiane@englishbee.com", password: "123456"},
2 => {first_name: "Vilson", last_name: "Jr", languages: "English", email: "vilson@englishbee.com", password: "123456"}
}

  def create
  end

  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = TEACHERS.select do |id, teacher|
      teacher[:first_name] == params[:first_name]
    end
  end

  def show
  end

end
