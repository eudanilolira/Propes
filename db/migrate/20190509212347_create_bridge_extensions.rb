class CreateBridgeExtensions < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_extensions do |t|
      t.string :right_side
      t.string :left_side
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
