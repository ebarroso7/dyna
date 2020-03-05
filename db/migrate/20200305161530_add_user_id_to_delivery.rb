class AddUserIdToDelivery < ActiveRecord::Migration[6.0]
  def change
    add_column :deliveries, :user_id, :integer
    add_column :deliveries, :location_id, :integer
    add_column :deliveries, :order_id, :integer
  end
end
