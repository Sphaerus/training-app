class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :topic
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
