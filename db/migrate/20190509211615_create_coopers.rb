class CreateCoopers < ActiveRecord::Migration[5.2]
  def change
    create_table :coopers do |t|
      t.string :distance
      t.string :aerobic_capacity
      t.string :v2max
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
