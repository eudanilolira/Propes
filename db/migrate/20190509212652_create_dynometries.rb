class CreateDynometries < ActiveRecord::Migration[5.2]
  def change
    create_table :dynometries do |t|
      t.decimal :peak_extension_right
      t.decimal :peak_extension_left
      t.decimal :peak_extension_deficit
      t.decimal :peak_flexion_right
      t.decimal :peak_flexion_left
      t.decimal :peak_flexion_deficit
      t.decimal :power_extension_right_180
      t.decimal :power_extension_left_180
      t.decimal :power_extesion_deficit_180
      t.decimal :power_flexion_right_180
      t.decimal :power_flexion_left_180
      t.decimal :power_flexion_deficit_180
      t.decimal :power_extension_right_300
      t.decimal :power_extension_left_300
      t.decimal :power_extesion_deficit_300
      t.decimal :power_flexion_right_300
      t.decimal :power_flexion_left_300
      t.decimal :power_flexion_deficit_300
      t.decimal :job_extension_right_180
      t.decimal :job_extension_left_180
      t.decimal :job_extesion_deficit_180
      t.decimal :job_flexion_right_180
      t.decimal :job_flexion_left_180
      t.decimal :job_flexion_deficit_180
      t.decimal :job_extension_right_300
      t.decimal :job_extension_left_300
      t.decimal :job_extesion_deficit_300
      t.decimal :job_flexion_right_300
      t.decimal :job_flexion_left_300
      t.decimal :job_flexion_deficit_300
      t.decimal :fatigue_extension_right_300
      t.decimal :fatigue_extension_left_300
      t.decimal :fatigue_extesion_deficit_300
      t.decimal :fatigue_flexion_right_300
      t.decimal :fatigue_flexion_left_300
      t.decimal :fatigue_flexion_deficit_300
      t.decimal :IDM_extension
      t.decimal :IDM_flexion
      t.decimal :relation_extension_right
      t.decimal :relation_extension_left
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true
      
      t.timestamps
    end
  end
end
