class CreateCritiques < ActiveRecord::Migration
  def change
    create_table :critiques do |t|
      t.integer :user_id
      t.integer :story_id
      t.text :comments

      t.timestamps null: false
    end
  end
end
