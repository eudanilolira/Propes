class RemoveResultFromPerimetry < ActiveRecord::Migration[5.2]
  def change
    remove_column :perimetries, :result, :numeric
  end
end
