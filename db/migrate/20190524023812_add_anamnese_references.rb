class AddAnamneseReferences < ActiveRecord::Migration[5.2]
  def change
    add_column :anamneses, :user_id, :bigint
    add_column :anamneses, :athletes_id, :bigint
  end
end
