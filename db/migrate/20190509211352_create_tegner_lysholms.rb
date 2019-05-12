class CreateTegnerLysholms < ActiveRecord::Migration[5.2]
  def change
    create_table :tegner_lysholms do |t|
      t.string :instability
      t.string :pain
      t.string :swelling
      t.string :climb_stairs
      t.string :squat
      t.string :locking
      t.string :limp
      t.string :support
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
