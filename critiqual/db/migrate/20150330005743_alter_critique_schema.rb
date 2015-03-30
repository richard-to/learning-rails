class AlterCritiqueSchema < ActiveRecord::Migration
  def change
    remove_column :critiques, :user_id, :integer
    remove_column :critiques, :story_id, :integer
    add_reference :critiques, :user, index: true
    add_reference :critiques, :story, index: true
  end
end
