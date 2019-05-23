class CreateTegnerLysholms < ActiveRecord::Migration[5.2]
  def change
    create_table :tegner_lysholms do |t|
      t.decimal :instability
      t.decimal :pain
      t.decimal :swelling
      t.decimal :climb_stairs
      t.decimal :squat
      t.decimal :locking
      t.decimal :limp
      t.decimal :support
      t.string :result
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
