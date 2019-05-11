class AddName < ActiveRecord::Migration[5.2]
  def change
    add_column :athletes, :name, :string
    add_column :appraisers, :name, :string
  end
end
