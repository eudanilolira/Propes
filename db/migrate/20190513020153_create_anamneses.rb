class CreateAnamneses < ActiveRecord::Migration[5.2]
  def change
    create_table :anamneses do |t|
      t.string :main_complaint
      t.string :history_complaint
      t.string :nature_complaint
      t.string :history_injuries
      t.boolean :is_accompanying
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true
      
      t.timestamps
    end
  end
end
