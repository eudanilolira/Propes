class RemoveAnamneseReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :anamneses, :user, index:true, foreign_key: true
    remove_reference :anamneses, :athletes, index:true, foreign_key: true
  end
end
