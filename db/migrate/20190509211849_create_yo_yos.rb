class CreateYoYos < ActiveRecord::Migration[5.2]
  def change
    create_table :yo_yos do |t|
      t.string :distance
      t.string :v2max
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
