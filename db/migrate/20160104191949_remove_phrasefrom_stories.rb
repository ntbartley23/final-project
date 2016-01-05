class RemovePhrasefromStories < ActiveRecord::Migration
  def change
  	remove_column :stories, :phrase, :string
  end
end
