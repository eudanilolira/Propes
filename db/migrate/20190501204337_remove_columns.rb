class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_reference :anamnese, :user, index: true, foreign_key: true
    remove_reference :anamnese, :athlete, index: true, foreign_key: true
    
    add_column :anamnese, :user_id
    add_column :anamnese, :athlete_id
  end
end
