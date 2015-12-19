class AddPhrasetoStories < ActiveRecord::Migration
  def change
  	add_column :stories, :phrase, :string
  end
end
