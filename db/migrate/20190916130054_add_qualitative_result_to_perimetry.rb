class AddQualitativeResultToPerimetry < ActiveRecord::Migration[5.2]
  def change
    add_column :perimetries, :qualitativeResult, :string
  end
end
