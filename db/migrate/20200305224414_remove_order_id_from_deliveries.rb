class RemoveOrderIdFromDeliveries < ActiveRecord::Migration[6.0]
  def change
    remove_column :deliveries, :order_id, :integer

    remove_column :locations, :delivery_id, :integer
    remove_column :locations, :user_id, :integer

    remove_column :users, :location_id, :integer
    remove_column :users, :order_id, :integer
  end
end
