class CreateCutaneousFolds < ActiveRecord::Migration[5.2]
  def change
    create_table :cutaneous_folds do |t|
      t.decimal :tricipital
      t.decimal :subescapular
      t.decimal :average_axilar
      t.decimal :breastplate
      t.decimal :supra_ilcia
      t.decimal :abdomen
      t.decimal :thigh
      t.decimal :cutaneous_fold_result
      t.string :qualitative_result
      t.decimal :bone_mass_BE
      t.decimal :bone_mass_BU
      t.decimal :bone_mass_BF
      t.decimal :bone_mass_BM
      
      t.decimal :bm_result
      t.decimal :residual_mass_result
      t.decimal :fat_mass_result
      t.decimal :muscle_mass_result
      t.decimal :lean_mass_result

      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
