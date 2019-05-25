class CreateAnkleMobilities < ActiveRecord::Migration[5.2]
  def change
    create_table :ankle_mobilities do |t|
      t.decimal :right_ankle
      t.decimal :left_ankle
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
