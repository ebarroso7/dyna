class AddUserIdToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :delivery_id, :integer
  end
end
