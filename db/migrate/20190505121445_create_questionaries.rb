class CreateQuestionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaries do |t|
      t.decimal :question1a
      t.decimal :question1b
      t.decimal :question2a
      t.decimal :question2b
      t.decimal :question3a
      t.decimal :question3b
      t.string :question4a
      t.string :question4b
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
