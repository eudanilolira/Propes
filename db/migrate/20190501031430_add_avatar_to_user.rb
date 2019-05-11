class AddAvatarToUser < ActiveRecord::Migration[5.2]
  def change
    add_column  :users, :avatar, :binary, :limit => 10.megabyte
  end
end
