class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|
      t.string :blood_pressure
      t.string :respiratory_frequency
      t.string :heart_rate
      t.string :SpO2
      t.string :weight
      t.string :height
      t.string :imc
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
