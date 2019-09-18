class AddAprovadoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :aprovado, :boolean
    remove_column :users, :approved
  end
end
