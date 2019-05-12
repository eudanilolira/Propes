class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :athletes, :email
    remove_column :athletes, :password
  end
end
