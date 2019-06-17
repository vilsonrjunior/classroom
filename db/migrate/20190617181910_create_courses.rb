class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :level
      t.string :description
      t.integer :teacher_id

      t.timestamps
    end
  end
end
