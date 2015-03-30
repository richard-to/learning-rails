class AlterStoryTable < ActiveRecord::Migration
  def change
    change_table :stories do |t|
      t.remove :word_count
      t.rename :content, :story
    end
    change_column_null :stories, :title, false
    change_column_null :stories, :story, false
    change_column_null :stories, :user_id, false
    add_reference :stories, :genre, index: true
  end
end
