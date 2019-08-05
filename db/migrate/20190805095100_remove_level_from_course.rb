class RemoveLevelFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :level, :string
  end
end
