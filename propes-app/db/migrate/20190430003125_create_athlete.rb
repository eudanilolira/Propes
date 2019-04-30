class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :cpf
      t.date :date_birth
      t.integer :age
      t.string :gender
      t.string :marital_status
      t.string :literacy
      t.string :profession
      t.string :address
      t.string :city
      t.string :neighborhood
      t.string :state
      t.integer :cep
      t.integer :phone_house
      t.integer :phone_mobile
      t.string :modality
      t.string :position
      t.string :msd
      t.string :mif
      t.string :smoker
      t.string :ethnicity
      t.string :has
      t.string :diabetes
      t.string :cardio_disease
      t.string :practice_exercises
      t.string :family_ethnicity
      t.string :family_has
      t.string :family_diabetes
      t.string :family_cardio
      t.string :others
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
