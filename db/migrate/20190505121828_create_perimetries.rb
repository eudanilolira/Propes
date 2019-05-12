class CreatePerimetries < ActiveRecord::Migration[5.2]
  def change
    create_table :perimetries do |t|
      t.string :left_arm_relaxed
      t.string :right_arm_relaxed
      t.string :left_contracted_arm
      t.string :right_contracted_arm
      t.string :chest
      t.string :abdomen
      t.string :left_proximal_thigh
      t.string :right_proximal_thigh
      t.string :left_middle_thigh
      t.string :right_middle_thigh
      t.string :left_distal_thigh
      t.string :right_distal_thigh
      t.string :left_leg
      t.string :right_leg
      t.string :waist
      t.string :hip
      t.string :result
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
