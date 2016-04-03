class RemoveUserIdFromProducts < ActiveRecord::Migration
  def change
    remove_index :products, :user_id
    remove_column :products, :user_id, :integer
  end
end
