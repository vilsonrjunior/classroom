class RemoveTeachersFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :teacher, :string
  end
end
