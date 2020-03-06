class ChangeConfirmationNumberToBoolean < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :confirmation_number, :string

    add_column :orders, :confirmed, :boolean, default: false
  end
end
