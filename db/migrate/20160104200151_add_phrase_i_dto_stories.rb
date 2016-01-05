class AddPhraseIDtoStories < ActiveRecord::Migration
  def change
  	add_column :stories, :phrase_id, :integer
  end
end
