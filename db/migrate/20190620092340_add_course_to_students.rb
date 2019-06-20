class AddCourseToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :course, :string
  end
end
