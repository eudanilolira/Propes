class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column  :users, :cpf, :string
    add_column  :users, :date_birth, :string
    add_column  :users, :gender, :string
    add_column  :users, :profession, :string
    add_column  :users, :address, :string
    add_column  :users, :city, :string
    add_column  :users, :neighborhood, :string
    add_column  :users, :state, :string
    add_column  :users, :cep, :string
    add_column  :users, :home_phone, :string
    add_column  :users, :cell_phone, :string
  end
end
