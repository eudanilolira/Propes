class CreateAnkleMobilities < ActiveRecord::Migration[5.2]
  def change
    create_table :ankle_mobilities do |t|
      t.decimal :right_ankle
      t.decimal :left_ankle
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
