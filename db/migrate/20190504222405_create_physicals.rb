class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|
      t.decimal :blood_pressure
      t.decimal :respiratory_frequency
      t.decimal :heart_rate
      t.decimal :SpO2
      t.decimal :weight
      t.decimal :height
      t.decimal :imc
      t.string :result
      t.date :created_at
      t.references :users, foreign_key: true
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
