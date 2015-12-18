class AddPreviousScoretoGrades < ActiveRecord::Migration
  def change
  	add_column :grades, :previous_score, :integer
  end
end
