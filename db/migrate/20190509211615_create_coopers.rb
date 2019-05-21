class CreateCoopers < ActiveRecord::Migration[5.2]
  def change
    create_table :coopers do |t|
      t.decimal :distance
      t.decimal :aerobic_capacity
      t.decimal :v2max
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
