class CorrectErrors < ActiveRecord::Migration[5.2]
  def change
    change_column :athletes, :cpf, :string
    change_column :athletes, :cep, :string
    change_column :athletes, :home_phone, :string
    change_column :athletes, :cell_phone, :string
  end
end
