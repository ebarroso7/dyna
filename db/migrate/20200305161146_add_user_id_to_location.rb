class AddUserIdToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :user_id, :integer
    add_column :locations, :delivery_id, :integer
  end
end
