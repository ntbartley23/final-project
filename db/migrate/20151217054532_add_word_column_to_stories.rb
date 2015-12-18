 class AddWordColumnToStories < ActiveRecord::Migration
  def change
    add_column :stories, :word, :string
  end
end
