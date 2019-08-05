class AddStartTimeToLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :start_time, :datetime
  end
end
