class AddStartDateToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :start_date, :datetime
  end
end
