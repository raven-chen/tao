class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :content
      t.integer :author_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
