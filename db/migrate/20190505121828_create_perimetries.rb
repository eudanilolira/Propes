class CreatePerimetries < ActiveRecord::Migration[5.2]
  def change
    create_table :perimetries do |t|
      t.decimal :left_arm_relaxed
      t.decimal :right_arm_relaxed
      t.decimal :left_contracted_arm
      t.decimal :right_contracted_arm
      t.decimal :chest
      t.decimal :abdomen
      t.decimal :left_proximal_thigh
      t.decimal :right_proximal_thigh
      t.decimal :left_middle_thigh
      t.decimal :right_middle_thigh
      t.decimal :left_distal_thigh
      t.decimal :right_distal_thigh
      t.decimal :left_leg
      t.decimal :right_leg
      t.decimal :waist
      t.decimal :hip
      t.decimal :result
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
