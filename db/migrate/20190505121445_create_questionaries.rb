class CreateQuestionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaries do |t|
      t.integer :question1a
      t.integer :question1b
      t.integer :question2a
      t.integer :question2b
      t.integer :question3a
      t.integer :question3b
      t.string :question4a
      t.string :question4b
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
