class RemoveQualitativeResultFromQuestionary < ActiveRecord::Migration[5.2]
  def change
    remove_column :questionaries, :qualitative_result, :string
  end
end
