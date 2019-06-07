class CreateYTests < ActiveRecord::Migration[5.2]
    def change
      create_table :y_tests do |t|
       
        t.decimal :right_PA
        t.decimal :right_PM
        t.decimal :right_PL
        t.decimal :right_CM
        t.decimal :right_result

        t.decimal :left_PA
        t.decimal :left_PM
        t.decimal :left_PL
        t.decimal :left_CM
        t.decimal :left_result

        t.string :right_qualitative_result
        t.string :left_qualitative_result
        t.bigint :user_id
        t.bigint :athlete_id
    
        t.timestamps
      end
    end
  end
  