class CreateImpulsions < ActiveRecord::Migration[5.2]
  def change
    create_table :impulsions do |t|
      t.decimal :distance
      t.decimal :P
      t.bigint :user_id
      t.bigint :athlete_id

      t.timestamps
    end
  end
end
