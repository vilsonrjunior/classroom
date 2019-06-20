class RemoveRoleFromTeacher < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :role, :string
  end
end
