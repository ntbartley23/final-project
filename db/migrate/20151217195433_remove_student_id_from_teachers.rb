class RemoveStudentIdFromTeachers < ActiveRecord::Migration
  def change
    remove_column :teachers, :student_id, :integer
  end
end
