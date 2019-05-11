class CreateFunctionalTests < ActiveRecord::Migration[5.2]
  def change
    create_table :functional_tests do |t|
      t.string :right_PA
      t.string :right_PM
      t.string :right_PL
      t.string :right_CM
      t.string :left_PA
      t.string :left_PM
      t.string :left_PL
      t.string :left_CM
      t.string :right_MMSS
      t.string :right_moviment
      t.string :right_pelvis_plane
      t.string :right_knee_position
      t.string :right_valg
      t.string :rightt_posture
      t.string :left_MMSS
      t.string :left_moviment
      t.string :left_pelvis_plane
      t.string :left_knee_position
      t.string :left_valg
      t.string :left_posture
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true
      

      t.timestamps
    end
  end
end
