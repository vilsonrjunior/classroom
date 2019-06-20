class RemoveTeacherIdFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :teacher_id, :integer
  end
end
