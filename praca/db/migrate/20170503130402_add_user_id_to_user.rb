class AddUserIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_id, :intiger
  end
end
