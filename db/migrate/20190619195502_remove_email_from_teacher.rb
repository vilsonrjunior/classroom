class RemoveEmailFromTeacher < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :email, :string
  end
end
