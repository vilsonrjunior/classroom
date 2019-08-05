class AddEndDateToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :end_date, :datetime
  end
end
