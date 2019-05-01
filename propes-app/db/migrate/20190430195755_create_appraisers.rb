class CreateAppraisers < ActiveRecord::Migration[5.2]
  def change
    drop_table :appraisers
    create_table :appraisers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :cpf
      t.date :date_birth
      t.string :gender
      t.string :profession
      t.string :address
      t.string :city
      t.string :neighborhood
      t.string :state
      t.integer :cep
      t.integer :home_phone
      t.integer :cell_phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
