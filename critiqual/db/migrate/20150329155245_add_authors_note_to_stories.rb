class AddAuthorsNoteToStories < ActiveRecord::Migration
  def change
    add_column :stories, :authors_note, :text, default: ""
  end
end
