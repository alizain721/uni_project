class RemoveStudentIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :student_id, :string
  end
end
