class AddQualitativeResultToQuestionary < ActiveRecord::Migration[5.2]
  def change
    add_column :questionaries, :qualitative_result, :string
  end
end
