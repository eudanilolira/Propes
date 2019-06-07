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
      t.decimal :result
      t.string :qualitative_result
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
