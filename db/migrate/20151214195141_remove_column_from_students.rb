class RemoveColumnFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :grade, :integer
  end
end
