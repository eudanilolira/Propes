class CreateYoYos < ActiveRecord::Migration[5.2]
  def change
    create_table :yo_yos do |t|
      t.decimal :distance
      t.decimal :result
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
