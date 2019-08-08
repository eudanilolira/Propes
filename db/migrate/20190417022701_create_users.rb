class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :cpf 
      t.string :date_birth 
      t.string :gender 
      t.string :profession 
      t.string :address 
      t.string :city 
      t.string :neighborhood 
      t.string :state 
      t.string :cep 
      t.string :home_phone 
      t.string :cell_phone 
      t.boolean :approved
      t.binary :avatar, :limit => 10.megabyte
      t.timestamps
    end
  end
end
