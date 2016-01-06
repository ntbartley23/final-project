class AddStoryIDtoPhrases < ActiveRecord::Migration
  def change
  	add_column :phrases, :story_id, :integer
  end
end
