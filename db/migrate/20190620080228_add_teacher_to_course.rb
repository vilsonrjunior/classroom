class AddTeacherToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :teacher, :string
  end
end
