class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :material
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
