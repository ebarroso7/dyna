class RemoveUserIdFromDelivery < ActiveRecord::Migration[6.0]
  def change
    remove_column :deliveries, :user_id, :integer
    remove_column :users, :delivery_id, :integer
  end
end
