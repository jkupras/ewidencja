class AddUserIdToEwidencjac < ActiveRecord::Migration[5.0]
  def change
    add_column :ewidencjas, :user_id, :intiger
  end
end
