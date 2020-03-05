class AddLocationIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location_id, :integer
    add_column :users, :delivery_id, :integer
    add_column :users, :order_id, :integer
  end
end
