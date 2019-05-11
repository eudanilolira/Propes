class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :athletes, :email
    remove_column :athletes, :password
    remove_column :athletes, :name
    remove_column :appraisers, :email
    remove_column :appraisers, :password  
    remove_column :appraisers, :name
    
  end
end
