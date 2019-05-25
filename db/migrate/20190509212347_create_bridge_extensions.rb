class CreateBridgeExtensions < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_extensions do |t|
      t.string :right_side
      t.string :left_side
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
