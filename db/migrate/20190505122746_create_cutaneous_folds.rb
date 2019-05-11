class CreateCutaneousFolds < ActiveRecord::Migration[5.2]
  def change
    create_table :cutaneous_folds do |t|
      t.string :tricipital
      t.string :subescapular
      t.string :average_axilar
      t.string :breastplate
      t.string :supra_ilcia
      t.string :abdomen
      t.string :thigh
      t.string :result
      t.string :bone_mass_BE
      t.string :bone_mass_BU
      t.string :bone_mass_BF
      t.string :bone_mass_BM
      t.string :bm_Result
      t.string :residual_mass
      t.string :fat_mass
      t.string :muscle_mass
      t.string :lean_mass
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
