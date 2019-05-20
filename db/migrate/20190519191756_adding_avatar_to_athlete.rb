class AddingAvatarToAthlete < ActiveRecord::Migration[5.2]
  def change
    add_column  :athletes, :avatar, :binary, :limit => 10.megabyte
  end
end
