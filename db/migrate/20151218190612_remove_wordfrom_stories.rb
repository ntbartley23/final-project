class RemoveWordfromStories < ActiveRecord::Migration
  def change
  	remove_column :stories, :word, :string
  end
end
