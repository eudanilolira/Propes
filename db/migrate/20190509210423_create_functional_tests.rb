class CreateFunctionalTests < ActiveRecord::Migration[5.2]
  def change
    create_table :functional_tests do |t|
      t.decimal :right_PA
      t.decimal :right_PM
      t.decimal :right_PL
      t.decimal :right_CM
      t.string :right_result
      t.decimal :left_PA
      t.decimal :left_PM
      t.decimal :left_PL
      t.decimal :left_CM
      t.string :left_result
      t.decimal :right_MMSS
      t.decimal :right_moviment
      t.decimal :right_pelvis_plane
      t.decimal :right_knee_position
      t.decimal :right_valg
      t.decimal :right_posture
      t.string :right_step_result
      t.decimal :left_MMSS
      t.decimal :left_moviment
      t.decimal :left_pelvis_plane
      t.decimal :left_knee_position
      t.decimal :left_valg
      t.decimal :left_posture
      t.string :left_step_result
      t.bigint :user_id
      t.bigint :athlete_id
      

      t.timestamps
    end
  end
end
