class AddCpfToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cpf, :string
  end
end
