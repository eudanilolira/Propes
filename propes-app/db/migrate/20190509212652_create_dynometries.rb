class CreateDynometries < ActiveRecord::Migration[5.2]
  def change
    create_table :dynometries do |t|
      t.string :peak_extension_right
      t.string :peak_extension_left
      t.string :peak_extension_deficit
      t.string :peak_flexion_right
      t.string :peak_flexion_left
      t.string :peak_flexion_deficit
      t.string :power_extension_right_180
      t.string :power_extension_left_180
      t.string :power_extesion_deficit_180
      t.string :power_flexion_right_180
      t.string :power_flexion_left_180
      t.string :power_flexion_deficit_180
      t.string :power_extension_right_300
      t.string :power_extension_left_300
      t.string :power_extesion_deficit_300
      t.string :power_flexion_right_300
      t.string :power_flexion_left_300
      t.string :power_flexion_deficit_300
      t.string :job_extension_right_180
      t.string :job_extension_left_180
      t.string :job_extesion_deficit_180
      t.string :job_flexion_right_180
      t.string :job_flexion_left_180
      t.string :job_flexion_deficit_180
      t.string :job_extension_right_300
      t.string :job_extension_left_300
      t.string :job_extesion_deficit_300
      t.string :job_flexion_right_300
      t.string :job_flexion_left_300
      t.string :job_flexion_deficit_300
      t.string :fatigue_extension_right_300
      t.string :fatigue_extension_left_300
      t.string :fatigue_extesion_deficit_300
      t.string :fatigue_flexion_right_300
      t.string :fatigue_flexion_left_300
      t.string :fatigue_flexion_deficit_300
      t.string :IDM_extension
      t.string :IDM_flexion
      t.string :relation_extension_right
      t.string :relation_extension_left
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true
      
      t.timestamps
    end
  end
end
