class AddAttemptedPhrasetoGrades < ActiveRecord::Migration
  def change
  	add_column :grades, :attempted_phrase, :string
  end
end
