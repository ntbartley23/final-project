class RemoveStudentIdFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :student_id, :integer
  end
end
