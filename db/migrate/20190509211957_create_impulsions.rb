class CreateImpulsions < ActiveRecord::Migration[5.2]
  def change
    create_table :impulsions do |t|
      t.string :distance
      t.string :P
      t.date :created_at
      t.references :user, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
